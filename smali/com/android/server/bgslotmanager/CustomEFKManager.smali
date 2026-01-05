.class public final Lcom/android/server/bgslotmanager/CustomEFKManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final APP_EFK_DECREASE_BOOST_ENABLE:Z

.field public static final BOOTING_EFK_BOOST_ENABLE:Z

.field public static final DECEFK_EXCEPT_PROC_ARRAY:[Ljava/lang/String;

.field public static final mTotalMemMb:J


# instance fields
.field public addBonusEFK:I

.field public isBlockDecEFK:Z

.field public isStillDecEFK:Z

.field public last_Watermark_EFK:I

.field public origin_EFK:I

.field public vDecreaseEFK:I

.field public vDecreaseEFKTime:I

.field public vWatermarkScaleGetPerTickTime:I

.field public vWatermarkScaleGetTime:I

.field public v_BonusEFK:I

.field public v_bonusEFKWhileBoot:I

.field public v_watermark_scale:I


# direct methods
.method public static -$$Nest$mrestoreEFKAfterBoot(Lcom/android/server/bgslotmanager/CustomEFKManager;)V
    .locals 1

    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    const-string/jumbo v0, "sys.sysctl.extra_free_kbytes"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->mTotalMemMb:J

    const-string/jumbo v0, "dec_EFK_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->APP_EFK_DECREASE_BOOST_ENABLE:Z

    const-string/jumbo v0, "bEFKb_enable"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->BOOTING_EFK_BOOST_ENABLE:Z

    const-string/jumbo v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE="

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->DECEFK_EXCEPT_PROC_ARRAY:[Ljava/lang/String;

    return-void
.end method
