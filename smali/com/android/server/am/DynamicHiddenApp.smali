.class public final Lcom/android/server/am/DynamicHiddenApp;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final BORA_POLICY_ENABLE:Z

.field public static DEBUG:Z

.field public static final IS_HIGH_CAPACITY_RAM:Z

.field public static final LMKD_REENTRY_MODE_ENABLE:Z

.field public static LMK_CUSTOM_SW_LIMIT:I

.field public static LMK_CUSTOM_TM_LIMIT:I

.field public static final LMK_ENABLE_REENTRY_LMK:Z

.field public static LMK_ENABLE_UPGRADE_CRIADJ:Z

.field public static final LMK_ENABLE_USERSPACE_LMK:Z

.field public static LMK_FREELIMIT_ENABLE:Z

.field public static LMK_FREELIMIT_VAL:I

.field public static final LMK_LOW_MEM_KEEP_ENABLE:Z

.field public static LMK_PSI_CRITICAL_TH:I

.field public static LMK_PSI_MEDIUM_TH:I

.field public static LMK_UPGRADE_PRESSURE:I

.field public static LMK_USE_MINFREE_LEVELS:Z

.field public static final MAX_NEVERKILLEDAPP_NUM:I

.field public static PICKED_ADJ_ENABLE:Z

.field public static final alliedProtectedProcList:Ljava/util/ArrayList;

.field public static lastStartTime:J

.field public static lastTime:J

.field public static mLMKArray:Ljava/lang/String;

.field public static mLMKScale:F

.field public static final mTotalMemMb:J

.field public static reentryCount:I

.field public static final reentryMap:Ljava/util/HashMap;

.field public static sHH_AMSExceptionEnable:Z

.field public static final sPkgDecoder:Ljava/util/Base64$Decoder;


# instance fields
.field public ActiveLaunchCount:I

.field public final ActiveLaunchLimit:I

.field public ActiveLaunchSlot:Ljava/util/ArrayList;

.field public HomeHubState:Z

.field public MlLaunchSlot:Ljava/util/ArrayList;

.field public isReentryMode:Z

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mBGProtectManager:Lcom/android/server/am/BGProtectManager;

.field public final mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

.field public mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

.field public mCameraKillModeManager:Lcom/android/server/bgslotmanager/CameraKillModeManager;

.field public mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public mContext:Landroid/content/Context;

.field public final mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

.field public final mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

.field public mProcessList:Lcom/android/server/am/ProcessList;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string/jumbo v0, "dha_lmk_scale"

    const-string v1, "-1"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const-string/jumbo v0, "dha_lmk_array"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string/jumbo v0, "enable_picked_adj"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    const-string/jumbo v0, "bora_policy_enable"

    const-string/jumbo v2, "false"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    const-string/jumbo v0, "hh_ams_exception"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->sPkgDecoder:Ljava/util/Base64$Decoder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->alliedProtectedProcList:Ljava/util/ArrayList;

    const-string/jumbo v0, "neverkill_num_lowram"

    const-string v3, "0"

    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v4, "neverkill_num_8G"

    const-string v5, "1"

    invoke-static {v4, v5}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "neverkill_num_12G"

    const-string v6, "3"

    invoke-static {v5, v6}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "neverkill_num_16G"

    const-string v7, "5"

    invoke-static {v6, v7}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v7

    const-wide/32 v9, 0x100000

    div-long/2addr v7, v9

    sput-wide v7, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v9, 0x2800

    cmp-long v9, v7, v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lez v9, :cond_0

    move v9, v11

    goto :goto_0

    :cond_0
    move v9, v10

    :goto_0
    sput-boolean v9, Lcom/android/server/am/DynamicHiddenApp;->IS_HIGH_CAPACITY_RAM:Z

    const-wide/16 v12, 0x3000

    cmp-long v9, v7, v12

    if-lez v9, :cond_1

    sput v6, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_1

    :cond_1
    const-wide/16 v12, 0x2000

    cmp-long v6, v7, v12

    if-lez v6, :cond_2

    sput v5, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x1800

    cmp-long v5, v7, v5

    if-lez v5, :cond_3

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_1

    :cond_3
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    :goto_1
    const-string/jumbo v0, "low"

    const-string v4, "1001"

    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "medium"

    const-string v4, "850"

    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "critical"

    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "debug"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "critical_upgrade"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "upgrade_pressure"

    const-string v3, "80"

    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    const-string/jumbo v0, "downgrade_pressure"

    const-string v3, "100"

    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "kill_heaviest_task"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "ro.config.low_ram"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    const-string/jumbo v0, "kill_timeout_ms"

    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "use_minfree_levels"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    const-string/jumbo v0, "enable_cmarbinfree_sub"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "enable_upgrade_criadj"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    const-string/jumbo v0, "freelimit_enable"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_MEM_KEEP_ENABLE:Z

    const-string/jumbo v0, "freelimit_val"

    const-string v2, "11"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    const-string/jumbo v0, "custom_sw_limit"

    const-string v2, "500"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    const-string/jumbo v0, "custom_tm_limit"

    const-string v2, "1000"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    const-string/jumbo v0, "psi_low"

    const-string v2, "70"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "psi_medium"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    const-string/jumbo v0, "psi_critical"

    const-string v2, "120"

    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    const-string/jumbo v0, "reentry_mode_enable"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMKD_REENTRY_MODE_ENABLE:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    sput v10, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->lastStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "add_bonusEFK"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->addBonusEFK:I

    const-string/jumbo v1, "v_bonusEFK"

    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_BonusEFK:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    const-string/jumbo v3, "v_BootEFK"

    const-string v4, "204800"

    invoke-static {v3, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_bonusEFKWhileBoot:I

    const-string/jumbo v3, "v_decrease_EFK"

    invoke-static {v3, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFK:I

    const-string/jumbo v3, "tm_decrease_EFK"

    const-string v4, "1000"

    invoke-static {v3, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFKTime:I

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetPerTickTime:I

    mul-int/lit8 v3, v3, 0x5

    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetTime:I

    iput v1, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->last_Watermark_EFK:I

    iput-boolean v4, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    iput-boolean v4, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isStillDecEFK:Z

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    new-instance v0, Lcom/android/server/bgslotmanager/MemInfoGetter;

    invoke-direct {v0}, Lcom/android/server/bgslotmanager/MemInfoGetter;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    new-instance v1, Lcom/android/server/bgslotmanager/BGSlotManager;

    invoke-direct {v1, v0}, Lcom/android/server/bgslotmanager/BGSlotManager;-><init>(Lcom/android/server/bgslotmanager/MemInfoGetter;)V

    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    new-instance v0, Lcom/android/server/am/BGProtectManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "ro.board.platform"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "remove_contact_except_list"

    const-string/jumbo v3, "false"

    invoke-static {v1, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->removeContactExceptList:Z

    const-string/jumbo v1, "dha_pallowlist_enable"

    const-string v5, "1"

    invoke-static {v1, v5}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    const-string/jumbo v1, "dha_knox_plist_enable"

    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    const-string/jumbo v1, "provider_upgrade_adj"

    invoke-static {v1, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->AMSExceptionProviderUpgradeAdjEnable:Z

    const-string/jumbo v1, "ams_knoxexpt_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->mKnoxAMSExceptionEnable:Z

    const-string/jumbo v1, "dha_dialer_except_th"

    const-string v5, "3072"

    invoke-static {v1, v5}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/BGProtectManager;->DIALER_EXCEPTION_TH:I

    const-string/jumbo v1, "cleanup_webview_enable"

    invoke-static {v1, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->CLEANUP_WEBVIEW_ENABLE:Z

    const-string/jumbo v1, "picked_adj_tm"

    const-string v5, "1800000"

    invoke-static {v1, v5}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_TIME_LIMIT:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    const-string/jumbo v1, "neverkill_sqetool_enable"

    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->NEVERKILL_SQETOOL_ENABLE:Z

    const-string/jumbo v1, "beks_enable"

    invoke-static {v1, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    const-string/jumbo v1, "bora_cached_num"

    const-string v2, "3"

    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessLimit:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotLimit:I

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    iput-boolean v4, p0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    return-void
.end method

.method public static decodeToStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->sPkgDecoder:Ljava/util/Base64$Decoder;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static setKpmParams(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "ro.slmk.kpm_debug_trigger"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    return v1

    :cond_0
    const-string/jumbo v0, "ro.slmk.kpm_policy_trigger"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    return v1

    :cond_1
    const-string/jumbo v0, "ro.slmk.kpm_debug_cycles"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    return v1

    :cond_2
    const-string/jumbo v0, "ro.slmk.kpm_boot_enable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static setLmkdCameraKillBoost(III)V
    .locals 4

    sget v0, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    invoke-static {v2, p0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long/2addr p0, v0

    const-wide/16 v0, 0xfa

    cmp-long p2, p0, v0

    if-lez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "SLOW setLmkdCameraKillBoost: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final dumpLMKDParameter(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  DHA_CACHE_MIN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    const-string v2, "  DHA_CACHE_MAX: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    const-string v2, "  DHA_EMPTY_MIN: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    const-string v2, "  DHA_EMPTY_MAX: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  AMC_CUR_MAX_CACHED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    const-string v2, "  AMC_CUR_MAX_EMPTY: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  LMKD_enable_userspace_lmk "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    const-string v2, "  LMKD_use_minfree_levels "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    const-string v2, "  LMKD_enable_upgrade_criadj "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    const-string v2, "  LMKD_freelimit_enable "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    const-string v2, "  LMKD_freelimit_val "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    const-string v2, "  LMKD_upgrade_pressure "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    const-string v2, "  LMKD_custom_sw_limit "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    const-string v2, "  LMKD_custom_tm_limit "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    const-string v2, "  LMKD_psi_medium_th "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    const-string v2, "  LMKD_psi_critical_th "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    const-string v2, "  LMKD_use_lowmem_keep_except "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_MEM_KEEP_ENABLE:Z

    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  APPCOMPACTOR_ENABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->isDebuggable:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method public final initDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->isinitClass:Z

    if-nez v0, :cond_6

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    :cond_0
    iput-object p3, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    new-instance p1, Lcom/android/server/bgslotmanager/BgAppPropManager;

    iget-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lcom/android/server/bgslotmanager/BgAppPropManager;->mProcessList:Lcom/android/server/am/ProcessList;

    iput-object p0, p1, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    iget-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/server/ServiceThread;

    const-string p3, "BGSlotManager"

    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-direct {p2, p3, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object p2, Lcom/android/server/bgslotmanager/BGSlotManager;->BGHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p2}, Lcom/android/server/ServiceThread;->start()V

    new-instance p2, Lcom/android/server/bgslotmanager/BGSlotManager$BgSlotManagerHandler;

    sget-object p3, Lcom/android/server/bgslotmanager/BGSlotManager;->BGHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    sput-object p2, Lcom/android/server/bgslotmanager/BGSlotManager;->BGHandler:Lcom/android/server/bgslotmanager/BGSlotManager$BgSlotManagerHandler;

    iput-object p0, p1, Lcom/android/server/bgslotmanager/BGSlotManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    sget-boolean p2, Lcom/android/server/bgslotmanager/BGSlotManager;->IS_CHINA_MODEL:Z

    if-eqz p2, :cond_1

    iget p3, p1, Lcom/android/server/bgslotmanager/BGSlotManager;->CHN_REDUCE_CACHED:I

    rsub-int p3, p3, 0x200

    sput p3, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    sget p3, Lcom/android/server/am/BGProtectManager;->dha_keepempty_chn_key:I

    sput p3, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    const-string/jumbo p3, "is china model : "

    const-string v0, "DynamicHiddenApp_BGSlotManager"

    invoke-static {p3, v0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    const-wide/16 p2, 0x1800

    sget-wide v2, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    cmp-long p2, v2, p2

    if-lez p2, :cond_2

    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    sget p3, Lcom/android/server/bgslotmanager/BGSlotManager;->STATIC_MAX_EMPTY_FOR_OVER_8GB:I

    if-ge p2, p3, :cond_2

    sput p3, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    :cond_2
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    iput p2, p1, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    iput p2, p1, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    iput p2, p1, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    iput p2, p1, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    const-string/jumbo p1, "cur_trim_cached_num"

    const-string p2, "0"

    invoke-static {p1, p2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string/jumbo p3, "cur_trim_empty_num"

    invoke-static {p3, p2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object p3, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz p3, :cond_4

    if-eqz p1, :cond_3

    iput p1, p3, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

    :cond_3
    if-eqz p2, :cond_4

    iput p2, p3, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

    :cond_4
    iget-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    iput-object p1, p2, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/android/server/am/BGProtectManager;->addAllowlistList(Z)V

    iget-boolean p1, p2, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    if-eqz p1, :cond_5

    invoke-static {v1}, Lcom/android/server/am/BGProtectManager;->addBEKSList(Z)V

    :cond_5
    iput v1, p2, Lcom/android/server/am/BGProtectManager;->NapProcessSlotLimit:I

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    iget p1, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iget p2, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->isinitClass:Z

    :cond_6
    return-void
.end method

.method public final resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/BGProtectManager;->isDhaKeepEmptyProcess(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    iget v0, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne v0, v5, :cond_0

    if-ne v1, v5, :cond_0

    iput v5, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    return-void

    :cond_0
    iget p0, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    if-ne p0, v5, :cond_1

    if-ne v1, v4, :cond_1

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_1

    iput v4, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    return-void

    :cond_1
    if-ne v0, v5, :cond_2

    const/4 p0, 0x3

    if-ne v1, p0, :cond_2

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    return-void

    :cond_2
    if-ne v0, v5, :cond_8

    if-ne v1, v3, :cond_8

    iput v3, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    return-void

    :cond_3
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_4
    move p0, v2

    :goto_0
    if-eq p0, v2, :cond_5

    iput-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    return-void

    :cond_5
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    if-eq p0, v2, :cond_9

    sget-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    if-ne p0, v4, :cond_6

    iput-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    invoke-virtual {v0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    return-void

    :cond_6
    if-ne p0, v3, :cond_7

    invoke-virtual {v0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    return-void

    :cond_7
    const/4 v0, 0x6

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    :cond_8
    return-void

    :cond_9
    sget-boolean p0, Lcom/android/server/am/BGProtectManager;->mCameraGuardEnable:Z

    if-eqz p0, :cond_a

    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    if-eqz p0, :cond_a

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    return-void

    :cond_a
    const/4 p0, 0x0

    iput p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    iput-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    iput v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    return-void
.end method

.method public final setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I
    .locals 13

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    if-eqz p1, :cond_1f

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    iget v2, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iget v3, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iget v4, v1, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x10

    const/16 v5, 0x3e7

    const/16 v6, 0x352

    const/4 v7, 0x0

    if-lt v3, v6, :cond_7

    if-gt v3, v5, :cond_7

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    const/16 v8, 0x384

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v9, 0xa

    if-eq v3, v9, :cond_1

    const/16 v9, 0xf

    if-ne v3, v9, :cond_3

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->IsProtected(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    iget v3, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {v1, v3, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    :cond_3
    :goto_0
    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    if-eqz v3, :cond_7

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v3, :cond_6

    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->IsProtected(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    if-nez v3, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    sub-long/2addr v9, v11

    iget v3, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_TIME_LIMIT:I

    int-to-long v11, v3

    cmp-long v3, v9, v11

    if-ltz v3, :cond_4

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/BGProtectManager;->isDhaKeepEmptyProcess(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_6

    invoke-virtual {v1, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "DynamicHiddenApp_BGProtectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Picked process timeout "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (pid: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    const-string v9, ")"

    invoke-static {v8, v9, v0, v3}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    :cond_6
    :goto_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    :cond_7
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/16 v3, 0x5c

    const/16 v6, 0xc8

    const/16 v8, 0xfa

    const/16 v9, 0x63

    if-lt v0, v8, :cond_d

    if-gt v0, v5, :cond_d

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v0, :cond_9

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v10, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v10}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v10

    if-ne v0, v10, :cond_9

    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-ne v0, v4, :cond_8

    const/16 v2, 0x5b

    goto :goto_2

    :cond_8
    const/16 v2, 0x5a

    :cond_9
    :goto_2
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->IsProtected(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->AMSExceptionProviderUpgradeAdjEnable:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "android.process.acore"

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "android.process.media"

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    :cond_b
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_c

    move v2, v3

    goto :goto_3

    :cond_c
    move v2, v9

    :cond_d
    :goto_3
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/16 v4, 0x320

    const/16 v7, 0x13

    if-lt v0, v4, :cond_13

    if-gt v0, v5, :cond_13

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_10

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->CLEANUP_WEBVIEW_ENABLE:Z

    if-eqz v0, :cond_e

    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    sget v4, Lcom/android/server/am/BGProtectManager;->WEBVIEW_ADJ_THRESHOLD:I

    if-gt v0, v4, :cond_10

    :cond_e
    move v2, v9

    goto :goto_4

    :cond_f
    const/16 v2, 0x62

    :cond_10
    :goto_4
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v0, :cond_11

    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-ne v0, v7, :cond_11

    const/16 v0, 0x61

    :goto_5
    move v2, v0

    goto :goto_6

    :cond_11
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    if-nez v0, :cond_12

    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-ne v0, v7, :cond_12

    const/16 v0, 0x60

    goto :goto_5

    :cond_12
    :goto_6
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_13

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    if-eqz v0, :cond_13

    move v2, v9

    :cond_13
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v0, :cond_16

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_14

    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    if-lt v0, v8, :cond_14

    goto :goto_7

    :cond_14
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/16 v3, 0x2bc

    if-ne v0, v3, :cond_15

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz v0, :cond_15

    const/16 v3, 0x96

    goto :goto_7

    :cond_15
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v3, v0, 0xb4

    const/16 v0, 0xc7

    if-le v3, v0, :cond_17

    move v3, v0

    goto :goto_7

    :cond_16
    move v3, v2

    :cond_17
    :goto_7
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    if-ge v0, v6, :cond_18

    if-ltz v0, :cond_18

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_18

    const/16 v3, 0x5f

    :cond_18
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    const/16 v2, -0x2bc

    if-nez v0, :cond_19

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    goto :goto_8

    :cond_19
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v4

    if-lt v0, v4, :cond_1a

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    goto :goto_8

    :cond_1a
    move v9, v3

    :goto_8
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-ne v0, v7, :cond_1b

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 v9, 0x5d

    :cond_1b
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->ALLIED_PROC_PROTECTION_LMKD:Z

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/android/server/am/DynamicHiddenApp;->alliedProtectedProcList:Ljava/util/ArrayList;

    monitor-enter p0

    :try_start_0
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/16 v9, 0x8d

    :cond_1c
    monitor-exit p0

    return v9

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1d
    return v9

    :cond_1e
    return v2

    :cond_1f
    :goto_9
    return v0
.end method
