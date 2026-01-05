.class public final Lcom/android/server/bgslotmanager/BGSlotManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static BGHandler:Lcom/android/server/bgslotmanager/BGSlotManager$BgSlotManagerHandler;

.field public static BGHandlerThread:Lcom/android/server/ServiceThread;

.field public static BONUS_MAX_CACHED_APPS_PER_SWAP:I

.field public static final HRT_MaxCached_Enable:Z

.field public static final IS_CHINA_MODEL:Z

.field public static MAX_CACHED_APPS:I

.field public static MAX_EMPTY_APPS:I

.field public static MIN_CACHED_APPS:I

.field public static MIN_EMPTY_APPS:I

.field public static final STATIC_MAX_EMPTY_FOR_OVER_8GB:I


# instance fields
.field public BGSlotState:I

.field public final CHN_REDUCE_CACHED:I

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public final mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

.field public originCachedMax:I

.field public originCachedMin:I

.field public originEmptyMax:I

.field public originEmptyMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "dha_cached_min"

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    const-string/jumbo v0, "cached_max"

    const-string v1, "512"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    const-string/jumbo v0, "dha_empty_min"

    const-string v1, "8"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    const-string/jumbo v0, "dha_empty_max"

    const-string v1, "24"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    const/4 v0, 0x0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    const-string/jumbo v0, "dha_empty_limit"

    const-string v1, "32"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->STATIC_MAX_EMPTY_FOR_OVER_8GB:I

    const-string/jumbo v0, "ro.csc.country_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "china"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bgslotmanager/BGSlotManager;->IS_CHINA_MODEL:Z

    const-string/jumbo v0, "dha_hrt_max_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bgslotmanager/BGSlotManager;->HRT_MaxCached_Enable:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGHandlerThread:Lcom/android/server/ServiceThread;

    sput-object v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGHandler:Lcom/android/server/bgslotmanager/BGSlotManager$BgSlotManagerHandler;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/bgslotmanager/MemInfoGetter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "reduce_chn_cached_max"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->CHN_REDUCE_CACHED:I

    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    iput-object p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    return-void
.end method


# virtual methods
.method public final changeBGSlot()V
    .locals 9

    iget v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    iget v1, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    iget v2, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    iget v3, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    and-int/lit8 v4, v3, 0x1

    if-lez v4, :cond_1

    div-int/lit8 v1, v2, 0x2

    iget v4, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    if-le v1, v4, :cond_0

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/4 v1, 0x2

    :cond_1
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    if-lez v4, :cond_2

    const/4 v4, -0x4

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    and-int/lit8 v6, v3, 0x4

    if-lez v6, :cond_3

    const/4 v0, 0x4

    const/16 v2, 0x10

    move v4, v5

    :cond_3
    and-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_4

    add-int/lit8 v4, v4, 0x6

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Before ChangeBGSlot CachedMax: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", CachedMin: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", EmptyMax: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "DynamicHiddenApp_BGSlotManager"

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v0, v4

    sget v3, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    add-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "After ChangeBGSlot CachedMax: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->updateDefaultCachedMAX()V

    return-void
.end method

.method public final setBonusMaxCachedAppsPerSwap()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    iget-object v1, v0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    iget-object v1, v0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v0, v0, Lcom/android/server/bgslotmanager/MemInfoGetter;->memoryMBToGBPool:[[I

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    aget v6, v5, v3

    if-le v1, v6, :cond_0

    const/4 v0, 0x1

    aget v0, v5, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    const/16 v1, 0x8

    const/4 v2, 0x6

    if-lt v0, v1, :cond_2

    sput v2, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    goto :goto_2

    :cond_2
    if-lt v0, v2, :cond_3

    const/4 v0, 0x2

    sput v0, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    goto :goto_2

    :cond_3
    sput v3, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    return-void
.end method

.method public final updateDefaultCachedMAX()V
    .locals 4

    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    add-int v2, v0, v1

    int-to-float v3, v0

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    iget-object p0, p0, Lcom/android/server/bgslotmanager/BGSlotManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput v2, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz p0, :cond_0

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    :cond_0
    return-void
.end method
