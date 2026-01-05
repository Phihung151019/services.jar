.class public final Lcom/android/server/chimera/SettingRepository;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDefaultCachedMax:I

.field public mIsAppCacheReclaimEnable:Z

.field public mIsConservativeMode:Z

.field public mIsCustomMode:Z

.field public final mIsDefaultConservativeMode:Z

.field public mIsFastMadviseEnable:Z

.field public mIsPSITrackerEnable:Z

.field public mIsSubProcEnable:Z

.field public mLastCachedMax:I

.field public mQuickReclaimEnable:Z

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.slmk.chimera.quickreclaim_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepository;->mIsPSITrackerEnable:Z

    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepository;->mIsAppCacheReclaimEnable:Z

    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepository;->mIsFastMadviseEnable:Z

    iput v1, p0, Lcom/android/server/chimera/SettingRepository;->mDefaultCachedMax:I

    iput v1, p0, Lcom/android/server/chimera/SettingRepository;->mLastCachedMax:I

    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    iput-object p1, p0, Lcom/android/server/chimera/SettingRepository;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "ro.slmk.dha_cached_max"

    const-string v3, "16"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/chimera/SettingRepository;->mDefaultCachedMax:I

    iput v2, p0, Lcom/android/server/chimera/SettingRepository;->mLastCachedMax:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "ro.slmk.use_bg_keeping_policy"

    const-string/jumbo v2, "false"

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "true"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "ro.csc.country_code"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "China"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepository;->mIsDefaultConservativeMode:Z

    return-void
.end method


# virtual methods
.method public final enableCustomMode(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/chimera/SettingRepository;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "false"

    const-string/jumbo v1, "persist.config.chimera.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "CC"

    goto :goto_0

    :cond_0
    const-string p1, "CA"

    :goto_0
    const-string/jumbo p2, "true,"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/chimera/SettingRepository;->initialize()V

    :cond_2
    return-void
.end method

.method public final initialize()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/chimera/SettingRepository;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "persist.config.chimera.enable"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/chimera/SettingRepository;->mIsCustomMode:Z

    iget-boolean v3, p0, Lcom/android/server/chimera/SettingRepository;->mIsDefaultConservativeMode:Z

    iput-boolean v3, p0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    const-string v3, "/proc/proc_caches_reclaim"

    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/chimera/SettingRepository;->mIsAppCacheReclaimEnable:Z

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FAST_MADVISE_ENABLED:Z

    iput-boolean v3, p0, Lcom/android/server/chimera/SettingRepository;->mIsFastMadviseEnable:Z

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    iget-object v4, v0, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.memoryguardian"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v4, v1, v2

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget v6, p0, Lcom/android/server/chimera/SettingRepository;->mDefaultCachedMax:I

    if-eqz v4, :cond_3

    array-length v4, v1

    const/4 v7, 0x1

    if-le v4, v7, :cond_3

    aget-object v1, v1, v7

    const-string v4, "CC"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v7, p0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    iput-boolean v7, p0, Lcom/android/server/chimera/SettingRepository;->mIsCustomMode:Z

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_1

    int-to-double v1, v6

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v6

    double-to-int v1, v1

    move v6, v1

    goto :goto_0

    :cond_1
    mul-int/lit8 v6, v6, 0x2

    :goto_0
    const/16 v1, 0x30

    if-le v6, v1, :cond_3

    move v6, v1

    goto :goto_1

    :cond_2
    const-string v4, "CA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    iput-boolean v7, p0, Lcom/android/server/chimera/SettingRepository;->mIsCustomMode:Z

    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/server/chimera/SettingRepository;->mLastCachedMax:I

    if-ne v1, v6, :cond_4

    iget-boolean v1, p0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    if-eq v3, v1, :cond_8

    :cond_4
    const-string/jumbo v1, "com.android.server.am.BROADCAST_SET_LMKD_PARAMETER_INTENT"

    const-string/jumbo v2, "android"

    invoke-static {v1, v2}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/server/chimera/SettingRepository;->mLastCachedMax:I

    if-eq v2, v6, :cond_5

    const-string/jumbo v2, "ro.slmk.dha_cached_max"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput v6, p0, Lcom/android/server/chimera/SettingRepository;->mLastCachedMax:I

    :cond_5
    iget-boolean v2, p0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    if-eq v3, v2, :cond_7

    if-eqz v2, :cond_6

    const-string v2, "1"

    goto :goto_2

    :cond_6
    const-string v2, "0"

    :goto_2
    const-string/jumbo v3, "ro.slmk.use_bg_keeping_policy"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8
    const-string/jumbo v0, "ro.slmk.psitracker_enable"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepository;->mIsPSITrackerEnable:Z

    :cond_9
    return-void
.end method
