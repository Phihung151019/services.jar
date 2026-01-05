.class public final Lcom/android/server/am/DynamicHiddenApp$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/DynamicHiddenApp;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DynamicHiddenApp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    if-eqz p2, :cond_3a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.android.server.am.BROADCAST_DHA_DEBUG_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    const-string/jumbo p0, "ro.debug_level"

    const-string/jumbo p1, "Unknown"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3a

    const-string p1, "0x4f4c"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_7

    :cond_1
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "com.android.server.am.BROADCAST_SET_DHA_PARAMETER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    const-string v1, "ActivityManager"

    if-nez p1, :cond_3

    const-string/jumbo p0, "updateParamsFile is blocked by ship build"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo p1, "com.android.server.am.BROADCAST_SET_LMKD_PARAMETER_INTENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, " - value is null"

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz p1, :cond_2f

    const-string p1, "BROADCAST_SET_LMKD_INTENT RECEIVED"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2e

    const-string p2, "LMKD_INTENT"

    const-string/jumbo v1, "send to updateParamsIntent"

    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    if-eqz p0, :cond_3a

    const-string p2, "DynamicHiddenApp_BgAppPropManager"

    const-string/jumbo v1, "Start updateParamsIntent"

    invoke-static {p2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2d

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "dha_lmk_array mLMKArray ="

    iget-object v8, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget-object v9, v8, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    const-string/jumbo v10, "name = [ "

    const-string v11, " ], value = [ "

    const-string v12, " ]"

    invoke-static {v10, v5, v11, v6, v12}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p2, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v10, "ro.slmk.dha_cached_max"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v7, :cond_29

    sput v7, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    iput v7, v9, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    invoke-virtual {v9}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    goto/16 :goto_3

    :catch_0
    move-exception v7

    goto/16 :goto_5

    :cond_4
    const-string/jumbo v10, "ro.slmk.dha_cached_min"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v7, :cond_29

    sput v7, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    iput v7, v9, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    invoke-virtual {v9}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v10, "ro.slmk.dha_empty_max"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v7, :cond_29

    sput v7, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    iput v7, v9, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    invoke-virtual {v9}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    goto/16 :goto_3

    :cond_6
    const-string/jumbo v10, "ro.slmk.dha_empty_min"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v7, :cond_29

    sput v7, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    iput v7, v9, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    invoke-virtual {v9}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v10, "ro.slmk.dha_lmk_scale"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    :goto_1
    move v6, v0

    move v5, v4

    goto/16 :goto_4

    :cond_8
    const-string/jumbo v10, "ro.slmk.dha_lmk_array"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    sput-object v6, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    const-string/jumbo v7, "ro.slmk.dha_pwhl_key"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    :goto_2
    move v5, v0

    move v6, v4

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v7, "ro.slmk.dha_pwhl_key_knox"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key_knox:I

    goto :goto_2

    :cond_b
    const-string/jumbo v7, "ro.slmk.ams_exception_enable"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/am/BGProtectManager;->mAMSExceptionEnable:Z

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v7, "ro.slmk.fha_cached_max"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v10, v8, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz v10, :cond_29

    iput v7, v10, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v7, "ro.slmk.fha_empty_rate"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iget-object v10, v8, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz v10, :cond_29

    sput v7, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v7, "ro.slmk.cam_dha_ver"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v7, "ro.slmk.enable_picked_adj"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v7, "ro.slmk.dha_2ndprop_thMB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    goto/16 :goto_3

    :cond_11
    const-string/jumbo v7, "ro.slmk.low"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_12
    const-string/jumbo v7, "ro.slmk.medium"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v0, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_13
    const-string/jumbo v7, "ro.slmk.critical"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v10, 0x2

    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_14
    const-string/jumbo v7, "ro.slmk.debug"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    const/4 v10, 0x3

    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    goto/16 :goto_3

    :cond_15
    const-string/jumbo v7, "ro.slmk.critical_upgrade"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v3, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    goto/16 :goto_3

    :cond_16
    const-string/jumbo v7, "ro.slmk.upgrade_pressure"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x5

    if-eqz v7, :cond_17

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    goto/16 :goto_3

    :cond_17
    const-string/jumbo v7, "ro.slmk.downgrade_pressure"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v11, 0x6

    if-eqz v7, :cond_18

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v11, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/2addr v7, v10

    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    goto/16 :goto_3

    :cond_18
    const-string/jumbo v7, "ro.slmk.kill_heaviest_task"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    const/4 v10, 0x7

    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    goto/16 :goto_3

    :cond_19
    const-string/jumbo v7, "ro.slmk.kill_timeout_ms"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v12, 0x8

    if-eqz v7, :cond_1a

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v12, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0xa

    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    goto/16 :goto_3

    :cond_1a
    const-string/jumbo v7, "ro.slmk.use_minfree_levels"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    const/16 v10, 0x9

    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    goto/16 :goto_3

    :cond_1b
    const-string/jumbo v7, "ro.slmk.enable_cmarbinfree_sub"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    const/16 v10, 0xb

    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    goto/16 :goto_3

    :cond_1c
    const-string/jumbo v7, "ro.slmk.enable_upgrade_criadj"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    const/16 v10, 0xc

    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    goto/16 :goto_3

    :cond_1d
    const-string/jumbo v7, "ro.slmk.freelimit_enable"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    const/16 v10, 0xd

    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    goto/16 :goto_3

    :cond_1e
    const-string/jumbo v7, "ro.slmk.freelimit_val"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v10, 0xe

    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    goto/16 :goto_3

    :cond_1f
    const-string/jumbo v7, "ro.slmk.custom_sw_limit"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    div-int/2addr v7, v10

    invoke-static {v11, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    goto/16 :goto_3

    :cond_20
    const-string/jumbo v7, "ro.slmk.custom_tm_limit"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    invoke-static {v12, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    goto/16 :goto_3

    :cond_21
    const-string/jumbo v7, "ro.slmk.psi_low"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v10, 0xf

    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_22
    const-string/jumbo v7, "ro.slmk.psi_medium"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v10, 0x10

    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    goto :goto_3

    :cond_23
    const-string/jumbo v7, "ro.slmk.psi_critical"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v10, 0x11

    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    goto :goto_3

    :cond_24
    const-string/jumbo v7, "ro.slmk.swappiness"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const-string/jumbo v7, "sys.sysctl.swappiness"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_25
    const-string/jumbo v7, "ro.slmk.mmap_readaround_limit"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    const-string/jumbo v7, "sys.sysctl.mmap_readaround_limit"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_26
    const-string/jumbo v7, "ro.slmk.fault_around_bytes"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    const-string/jumbo v7, "sys.sysctl.fault_around_bytes"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_27
    const-string/jumbo v7, "ro.slmk.use_bg_keeping_policy"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v10, 0x13

    invoke-static {v10, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    goto :goto_3

    :cond_28
    invoke-static {v5, v6}, Lcom/android/server/am/DynamicHiddenApp;->setKpmParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    const-string/jumbo v7, "setKpmParams"

    invoke-static {p2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_29
    :goto_3
    move v5, v4

    move v6, v5

    :goto_4
    if-eqz v5, :cond_2a

    iget-object v5, v8, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {v5}, Lcom/android/server/am/BGProtectManager;->initBGProtectManagerPostBoot()V

    :cond_2a
    if-eqz v6, :cond_2b

    iget-object v5, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v6, v5, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iget v7, v5, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    :cond_2b
    invoke-virtual {v9}, Lcom/android/server/bgslotmanager/BGSlotManager;->updateDefaultCachedMAX()V

    goto/16 :goto_0

    :cond_2c
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - cannot matched parameter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :goto_5
    const-string v8, "Error occurred not correct data format ["

    const-string/jumbo v9, "]  ["

    const-string/jumbo v10, "]"

    invoke-static {v8, v5, v9, v6, v10}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2e
    const-string/jumbo p0, "getExtras is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v5, "com.samsung.android.homehub.action.DEFAULT_HOME_CHANGE"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v6, "android.intent.action.DOCK_EVENT"

    if-nez p1, :cond_30

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    :cond_30
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_39

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "get action default home change, extra home hub mode intent"

    const-string v7, "ActivityManager_HOME_HUB"

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_34

    sget v10, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    const-string/jumbo v10, "ro.product.model"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "SM-T270"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, " - value is "

    if-eqz v10, :cond_32

    const-string/jumbo v10, "home_hub_mode"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-static {v8, v11}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    goto :goto_6

    :cond_32
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31

    const-string/jumbo v10, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-static {v8, v11}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    goto/16 :goto_6

    :cond_33
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_34
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_35
    iget-boolean p1, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    if-eqz p1, :cond_37

    if-eqz p0, :cond_36

    iget p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    or-int/2addr p1, v3

    iput p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    :cond_36
    const-string/jumbo p0, "update cached,empty max slot due to launcher change to HH"

    invoke-static {v7, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    return-void

    :cond_37
    if-eqz p0, :cond_38

    iget p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    const-string p0, "DynamicHiddenApp_BGSlotManager"

    const-string p1, "HomeHubBGSlot Recovered"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const-string/jumbo p0, "update cached,empty max slot due to launcher change from HH"

    invoke-static {v7, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    return-void

    :cond_39
    const-string/jumbo p0, "get ExtraHomeHub is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    :goto_7
    return-void
.end method
