.class public final Lcom/android/server/am/BGProtectManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

.field public static final CAMERA_GUARD_ARRAY:[Ljava/lang/String;

.field public static final DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

.field public static final DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

.field public static final DHA_NEVERKILLEXCEPT_ARRAY_BY_KEY:[[Ljava/lang/String;

.field public static final DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

.field public static final LMKD_CAM_CLIENT_EXCEPT_ARRAY:[Ljava/lang/String;

.field public static final PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

.field public static final WEBVIEW_ADJ_THRESHOLD:I

.field public static allowListCleared:Z

.field public static final beks_package_key_bit:I

.field public static final dha_MLexcept_map:Ljava/util/ArrayList;

.field public static final dha_amsexcept_map:Ljava/util/HashMap;

.field public static final dha_cameraguard_map:Ljava/util/HashMap;

.field public static final dha_keep_onlyact_key:I

.field public static final dha_keepchimera_key:I

.field public static final dha_keepempty_chn_key:I

.field public static dha_keepempty_key:I

.field public static dha_keepempty_key_knox:I

.field public static final dha_keepempty_map:Ljava/util/HashMap;

.field public static final dha_neverkillexcept_key:I

.field public static final dha_neverkillexcept_map:Ljava/util/HashMap;

.field public static mAMSExceptionEnable:Z

.field public static final mCameraGuardEnable:Z

.field public static final mTotalMemMb:J

.field public static final sBEKS_processList:Ljava/util/ArrayList;

.field public static final sProvider_lifeguard_key:I

.field public static final sProvider_lifeguard_memory_TH:I


# instance fields
.field public AMSExceptionProviderUpgradeAdjEnable:Z

.field public BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

.field public CLEANUP_WEBVIEW_ENABLE:Z

.field public DIALER_EXCEPTION_TH:I

.field public NEVERKILL_SQETOOL_ENABLE:Z

.field public NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

.field public NapProcessSlotLimit:I

.field public PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

.field public PICKED_ADJ_TIME_LIMIT:I

.field public mContext:Landroid/content/Context;

.field public mDhaKeepEmptyEnable:I

.field public mDhaKeepEmptyEnableKnox:I

.field public mKnoxAMSExceptionEnable:Z

.field public recentActivityProcessLimit:I

.field public recentActivityProcessList:Ljava/util/ArrayList;

.field public removeContactExceptList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 38

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    const-string/jumbo v0, "ams_exception_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BGProtectManager;->mAMSExceptionEnable:Z

    const/16 v0, 0x398

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "webview_adj_th"

    invoke-static {v2, v0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->WEBVIEW_ADJ_THRESHOLD:I

    const-string/jumbo v0, "camera_guard_enable"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BGProtectManager;->mCameraGuardEnable:Z

    const-string/jumbo v0, "beks_key"

    const-string v1, "31"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->beks_package_key_bit:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    const-string/jumbo v0, "Y29tLmdvb2dsZS5wcm9jZXNzLmdhcHBz"

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v15, "Y29tLnNlYy5hbmRyb2lkLmdhbGxlcnkzZA=="

    invoke-static {v15}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v16, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Y29tLmdvb2dsZS5hbmRyb2lkLmdt"

    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWFwcw=="

    invoke-static {v5}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v17, "Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAubm90ZXM="

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    invoke-static {v7}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v18, "Y29tLnNlYy5hbmRyb2lkLmFwcC5teWZpbGVz"

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "SU5DQUxMVUk="

    invoke-static {v9}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v19, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE="

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "TU1T"

    invoke-static {v11}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Y29tLmJhaWR1LkJhaWR1TWFw"

    invoke-static {v12}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v20, "Y29tLmFuZHJvaWQuc2V0dGluZ3M="

    invoke-static/range {v20 .. v20}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWVzc2FnaW5n"

    invoke-static {v14}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BGProtectManager;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    const-string/jumbo v1, "YW5kcm9pZC5wcm9jZXNzLmFjb3Jl"

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "Q09OVEFDVFM="

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "RElBTEVS"

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "SE9NRUhVQg=="

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "Y29tLnNhbXN1bmcuYW5kcm9pZC5wcm92aWRlcnMubWVkaWE="

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "QklYQlk="

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BGProtectManager;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5tb2JpbGVzZXJ2aWNl"

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v0, "Y29tLm9zcC5hcHAuc2lnbmlu"

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v0, "Y29tLmdvb2dsZS5wcm9jZXNzLmdzZXJ2aWNlcw=="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v0, "Y29tLnNlYy5hbmRyb2lkLnByb3ZpZGVyLmJhZGdl"

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v0, "Y29tLnNhbXN1bmcuaXBzZXJ2aWNl"

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zb3VuZGFsaXZl"

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v0, "Y29tLmdvb2dsZS5hbmRyb2lkLmdvb2dsZXF1aWNrc2VhcmNoYm94OnNlYXJjaA=="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcjpwcml2aWxlZ2VkX3Byb2Nlc3Mw"

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v0, "Y29tLnZlcml6b24ubWVzc2FnaW5nLnZ6bXNncw=="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v0, "Y29tLmFuZHJvaWQucHJvdmlkZXJzLmNhbGVuZGFy"

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5zY2xvdWQ="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5zYW1zdW5ncGFzcw=="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAucmVtaW5kZXI="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAucm91dGluZXM="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v0, "Y29tLnNlYy51bmlmaWVkd2Zj"

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5nbG9iYWxwb3N0cHJvY21ncg=="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    filled-new-array/range {v21 .. v37}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BGProtectManager;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    const-string/jumbo v0, "Y29tLnNhbGFiLmFjdA=="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    const-string/jumbo v3, "plat"

    filled-new-array {v1, v2, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Y29tLnNlYy5hbmRyb2lkLmFwcC50aW55bQ=="

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4, v2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "Y29tLnNlYy5hZWNtb25pdG9y"

    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v5, v2, v4, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "RkFDVE9SWQ=="

    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    filled-new-array {v4, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v3, v2}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

    const-string/jumbo v0, "Y29tLmdvb2dsZS5hbmRyb2lkLmdtcw=="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    const-string/jumbo v4, "priv"

    filled-new-array {v1, v3, v2, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Y29tLmdvb2dsZS5hbmRyb2lkLmdtcy5wZXJzaXN0ZW50"

    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v3, v0, v4}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY_BY_KEY:[[Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v20 .. v20}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5kaWFsZXI="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5tZXNzYWdpbmc="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jbG9ja3BhY2thZ2U="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5jYWxlbmRhcg=="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC52b2ljZW5vdGU="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

    invoke-static {v15}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BGProtectManager;->CAMERA_GUARD_ARRAY:[Ljava/lang/String;

    const-string/jumbo v0, "Y29tLnNhbXN1bmcuYWRhcHRpdmVicmlnaHRuZXNzZ28="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "YW5kcm9pZC5zeXN0ZW0="

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Y29tLnNhbXN1bmcuYW5kcm9pZC5zbWFydGZhY2U="

    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Y29tLnNhbXN1bmcuYW5kcm9pZC5iaW8uZmFjZS5zZXJ2aWNl"

    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BGProtectManager;->LMKD_CAM_CLIENT_EXCEPT_ARRAY:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    const-string/jumbo v0, "dha_pwhl_key"

    const-string v1, "512"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    const-string/jumbo v0, "dha_pwhl_key_knox"

    const-string v1, "1539"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key_knox:I

    sget v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dha_pwhl_chn_key"

    invoke-static {v1, v0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_chn_key:I

    const-string/jumbo v0, "dha_chimerawhl_key"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keepchimera_key:I

    const-string/jumbo v0, "dha_onlyact_key"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_keep_onlyact_key:I

    const-string/jumbo v0, "dha_neverkill_key"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_key:I

    const-string/jumbo v0, "add_protect"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "plg_memory_th"

    const-string v1, "4096"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_memory_TH:I

    const-string/jumbo v0, "plg_key"

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_key:I

    return-void
.end method

.method public static IsProtected(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    sget-object v1, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    const/4 v2, 0x3

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    invoke-virtual {v1}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_5

    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez v0, :cond_1

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    invoke-virtual {v1}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v1, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v1}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_5

    :cond_3
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez v0, :cond_4

    if-ge v0, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static addBEKSList(Z)V
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 p0, 0x1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    sget v2, Lcom/android/server/am/BGProtectManager;->beks_package_key_bit:I

    and-int/2addr v2, p0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    shl-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static appIsPickedProcess(ILjava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "_&_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "Y29tLmFuZHJvaWQuY29udGFjdHM="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :goto_0
    return-object v0
.end method

.method public static getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "Y29tLmFuZHJvaWQuaW5jYWxsdWk="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :goto_0
    return-object v0
.end method

.method public static getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "Y29tLmFuZHJvaWQubW1z"

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :goto_0
    return-object v0
.end method

.method public static isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/16 v1, 0x352

    if-lt v0, v1, :cond_2

    const/16 v1, 0x3e7

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v0, 0x10

    if-ne p0, v0, :cond_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isDhaKeepEmptyProcess(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget v0, v0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget-object v0, v0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    const-string/jumbo v1, "check webview name : "

    const-string v2, "DynamicHiddenApp_BGProtectManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "check hostingname webview : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    invoke-static {v0, p0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v1, "check hostingname webview : null "

    invoke-static {v0, p0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, ":sandboxed_process"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const-string/jumbo v0, "com.sec.android.app.sbrowser"

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x6

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final addAllowlistList(Z)V
    .locals 12

    if-nez p1, :cond_0

    sget-object v1, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sget-object v1, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sget-object v1, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sget-object v1, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v6, 0x0

    move v1, v6

    :goto_0
    sget-object v2, Lcom/android/server/am/BGProtectManager;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    array-length v3, v2

    const/4 v7, 0x1

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    aget-object v2, v2, v1

    aget-object v4, v2, v6

    aget-object v2, v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v3, v4, v2, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_memory_TH:I

    int-to-long v1, v1

    sget-wide v3, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_3

    move v1, v6

    move v2, v7

    :goto_1
    sget-object v3, Lcom/android/server/am/BGProtectManager;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    sget v4, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_key:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-virtual {p0, v4, v3, v7, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    :cond_2
    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/BGProtectManager;->NEVERKILL_SQETOOL_ENABLE:Z

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v1, :cond_4

    move v10, v6

    :goto_2
    sget-object v1, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

    array-length v2, v1

    if-ge v10, v2, :cond_4

    sget-object v5, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    aget-object v2, v1, v10

    move-object v3, v2

    aget-object v2, v3, v6

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v1, v1, v10

    move-object v4, v1

    move v1, v3

    aget-object v3, v4, v9

    aget-object v4, v4, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BGProtectManager;->dhaAddNeverKilledPackageName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    move v10, v6

    move v11, v7

    :goto_3
    sget-object v0, Lcom/android/server/am/BGProtectManager;->DHA_NEVERKILLEXCEPT_ARRAY_BY_KEY:[[Ljava/lang/String;

    array-length v1, v0

    if-ge v10, v1, :cond_6

    sget v1, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_key:I

    and-int/2addr v1, v11

    if-eqz v1, :cond_5

    sget-object v5, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    aget-object v1, v0, v10

    aget-object v2, v1, v6

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v10

    aget-object v3, v0, v9

    aget-object v4, v0, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BGProtectManager;->dhaAddNeverKilledPackageName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_5
    shl-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    move v1, v6

    move v2, v7

    :goto_4
    sget-object v3, Lcom/android/server/am/BGProtectManager;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_b

    iget v4, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne v4, v7, :cond_7

    sget v5, Lcom/android/server/am/BGProtectManager;->dha_keepchimera_key:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    aget-object v10, v3, v1

    invoke-virtual {p0, v5, v10, v8, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    :cond_7
    iget v5, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    if-ne v5, v7, :cond_8

    sget v5, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key_knox:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    aget-object v10, v3, v1

    invoke-virtual {p0, v5, v10, v9, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    :cond_8
    if-ne v4, v7, :cond_9

    sget v5, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_9

    sget-object v5, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    aget-object v10, v3, v1

    invoke-virtual {p0, v5, v10, v7, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    :cond_9
    if-ne v4, v7, :cond_a

    sget v4, Lcom/android/server/am/BGProtectManager;->dha_keep_onlyact_key:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    aget-object v3, v3, v1

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v3, v5, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    :cond_a
    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    sget-boolean v1, Lcom/android/server/am/BGProtectManager;->mCameraGuardEnable:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/server/am/BGProtectManager;->CAMERA_GUARD_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_c

    sget-object v2, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    aget-object v1, v1, v6

    invoke-virtual {p0, v2, v1, v7, p1}, Lcom/android/server/am/BGProtectManager;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_c
    return-void
.end method

.method public final dhaAddNeverKilledPackageName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string/jumbo p0, "plat"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/high16 v0, 0x100000

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "priv"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x8

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    const-string/jumbo p4, "RkFDVE9SWQ=="

    invoke-static {p4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    const-string p2, "0"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string/jumbo p3, "ro.debuggable"

    invoke-static {p3, p2}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    const-string p2, "DynamicHiddenApp_BGProtectManager"

    const-string/jumbo p3, "it\'s debuggable binary!! add FACTORY in allowlist"

    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/2addr p0, v0

    const-string/jumbo p2, "Y29tLnNlYy5mYWNhdGZ1bmN0aW9u"

    invoke-static {p2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    invoke-static {p2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p0}, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p4, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p5, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "Y29tLnNlYy5mYWN1aWZ1bmN0aW9u"

    invoke-static {p2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    invoke-static {p2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p0}, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p4, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p5, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "Y29tLnNhbXN1bmcuYW5kcm9pZC5haXJjb21tYW5kbWFuYWdlcg=="

    invoke-static {p2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    invoke-static {p2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p0}, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p4, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p5, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p4, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    invoke-direct {v0, p3, p0}, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p4, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p5, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v0, "TU1T"

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Q09OVEFDVFM="

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SU5DQUxMVUk="

    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "RElBTEVS"

    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SE9NRUhVQg=="

    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "QklYQlk="

    invoke-static {v5}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RkFDVE9SWQ=="

    invoke-static {v6}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Q01I"

    invoke-static {v7}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p4, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-boolean p4, p0, Lcom/android/server/am/BGProtectManager;->removeContactExceptList:Z

    if-nez p4, :cond_3

    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    iget p0, p0, Lcom/android/server/am/BGProtectManager;->DIALER_EXCEPTION_TH:I

    int-to-long v0, p0

    sget-wide v2, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    cmp-long p0, v2, v0

    if-lez p0, :cond_4

    const-string/jumbo p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5kaWFsZXI="

    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    const-string/jumbo p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5ob21laHVi"

    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    const-string/jumbo p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5iaXhieS5hZ2VudA=="

    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "0"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const-string/jumbo p4, "ro.debuggable"

    invoke-static {p4, p0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p4, 0x1

    if-ne p0, p4, :cond_9

    const-string p0, "DynamicHiddenApp_BGProtectManager"

    const-string/jumbo p2, "it\'s debuggable binary!! add FACTORY in allowlist"

    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "Y29tLnNlYy5mYWNhdGZ1bmN0aW9u"

    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "Y29tLnNlYy5mYWN1aWZ1bmN0aW9u"

    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5haXJjb21tYW5kbWFuYWdlcg=="

    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_9
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string/jumbo p0, "Y29tLnNhbXN1bmcuY21oOkNNSA=="

    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "Y29tLnNhbXN1bmcuY21o"

    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_a
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final dhaDeletePackageName(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "TU1T"

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Q09OVEFDVFM="

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SU5DQUxMVUk="

    invoke-static {v2}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "RElBTEVS"

    invoke-static {v3}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Q01I"

    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p0, "Y29tLnNhbXN1bmcuYW5kcm9pZC5kaWFsZXI="

    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/am/BGProtectManager;->getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string/jumbo p0, "Y29tLnNhbXN1bmcuY21oOkNNSA=="

    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "Y29tLnNhbXN1bmcuY21o"

    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final initBGProtectManagerPostBoot()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BGProtectManager;->addAllowlistList(Z)V

    iget-boolean v1, p0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/server/am/BGProtectManager;->addBEKSList(Z)V

    :cond_0
    const-string/jumbo v0, "persist.sys.bub_onoff"

    const-string/jumbo v1, "on"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager;->removeAllowlistByBUB()V

    :cond_1
    return-void
.end method

.method public final isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-boolean p0, p0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/am/BGProtectManager;->sBEKS_processList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    const-wide/32 v0, 0x927c0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAllowlistByBUB()V
    .locals 4

    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    const-string/jumbo v1, "Q09OVEFDVFM="

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v1, "RElBTEVS"

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/lang/String;Ljava/util/HashMap;)V

    sget v0, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_memory_TH:I

    int-to-long v0, v0

    sget-wide v2, Lcom/android/server/am/BGProtectManager;->mTotalMemMb:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/server/am/BGProtectManager;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    sget v3, Lcom/android/server/am/BGProtectManager;->sProvider_lifeguard_key:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BGProtectManager;->dhaDeletePackageName(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
