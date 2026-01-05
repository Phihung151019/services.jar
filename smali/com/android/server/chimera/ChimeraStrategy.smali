.class public final Lcom/android/server/chimera/ChimeraStrategy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAlwaysRunningProcessQuota:I

.field public final mDeviceIdleAppThreshold:I

.field public final mDeviceIdleNativeThreshold:I

.field public mMemFreeTarget:J

.field public final mProtectedCountOnDynamic:I

.field public mProtectedCountOnHomeTrigger:I

.field public mProtectedCountOnLmkdTrigger:I

.field public final mQuickReclaimDefaultThreshold:I

.field public final mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iput-object p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    sget-object v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v2, v1, v0

    aget v2, v2, p2

    const/4 v3, -0x1

    if-lez v2, :cond_1

    if-lt v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    move v2, v3

    :goto_1
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const/4 v5, 0x1

    const/4 v6, 0x3

    const-string v7, "ChimeraStrategy"

    if-eq v2, v3, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v8, "ro.slmk.chimera_strategy_%dgb"

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "updateDefaultParameters > "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v8, v2

    if-le v8, v6, :cond_2

    move v8, v5

    :goto_2
    if-gt v8, v6, :cond_3

    :try_start_0
    aget-object v9, v1, v0

    add-int/lit8 v10, v8, -0x1

    aget-object v10, v2, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error while updating default : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const-string v0, "Chimera parameter mismatched"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, p2

    :goto_4
    aget-object v2, v1, v0

    aget v8, v2, p2

    if-lez v8, :cond_5

    if-lt v8, p1, :cond_4

    aget v0, v2, v5

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v0, v3

    :goto_5
    int-to-long v8, v0

    const-wide/16 v10, 0x400

    mul-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    move v0, p2

    :goto_6
    aget-object v2, v1, v0

    aget v8, v2, p2

    if-lez v8, :cond_7

    if-lt v8, p1, :cond_6

    const/4 v0, 0x2

    aget v0, v2, v0

    goto :goto_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    move v0, v3

    :goto_7
    const-string/jumbo v2, "persist.config.chimera.protected_count_on_lmkd"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    move v0, p2

    :goto_8
    aget-object v2, v1, v0

    aget v8, v2, p2

    if-lez v8, :cond_9

    if-lt v8, p1, :cond_8

    aget v0, v2, v6

    goto :goto_9

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    move v0, v3

    :goto_9
    const-string/jumbo v2, "persist.config.chimera.protected_count_on_home"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    iget-wide v8, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-ltz v2, :cond_a

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    if-gez v0, :cond_b

    :cond_a
    const v0, 0x8000

    int-to-long v8, v0

    iput-wide v8, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    :cond_b
    move v0, p2

    :goto_a
    sget-object v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sDynamicParameters:[[F

    aget-object v2, v2, v0

    aget v6, v2, p2

    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-lez v8, :cond_d

    int-to-float v8, p1

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_c

    aget v0, v2, v5

    goto :goto_b

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_d
    const/high16 v0, -0x40800000    # -1.0f

    :goto_b
    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    move v0, p2

    :goto_c
    aget-object v2, v1, v0

    aget v5, v2, p2

    if-lez v5, :cond_f

    if-lt v5, p1, :cond_e

    const/4 v0, 0x5

    aget v0, v2, v0

    goto :goto_d

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_f
    move v0, v3

    :goto_d
    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mQuickReclaimDefaultThreshold:I

    move v0, p2

    :goto_e
    aget-object v2, v1, v0

    aget v5, v2, p2

    if-lez v5, :cond_11

    if-lt v5, p1, :cond_10

    const/4 v0, 0x6

    aget v0, v2, v0

    goto :goto_f

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_11
    move v0, v3

    :goto_f
    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDeviceIdleAppThreshold:I

    move v0, p2

    :goto_10
    aget-object v2, v1, v0

    aget v5, v2, p2

    if-lez v5, :cond_13

    if-lt v5, p1, :cond_12

    const/4 v0, 0x7

    aget v0, v2, v0

    goto :goto_11

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_13
    move v0, v3

    :goto_11
    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDeviceIdleNativeThreshold:I

    move v0, p2

    :goto_12
    aget-object v2, v1, v0

    aget v5, v2, p2

    if-lez v5, :cond_15

    if-lt v5, p1, :cond_14

    const/16 p2, 0x8

    aget v3, v2, p2

    goto :goto_13

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_15
    :goto_13
    iput v3, p0, Lcom/android/server/chimera/ChimeraStrategy;->mAlwaysRunningProcessQuota:I

    const-string p2, "ChimeraStrategy() - ramSizeGb: "

    const-string v0, " mMemFreeTarget: "

    invoke-static {p1, p2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mProtectedCountOnLmkdTrigger: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mProtectedCountOnHomeTrigger: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mProtectedCountOnDynamic: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mQuickReclaimDefaultThreshold: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mQuickReclaimDefaultThreshold:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mDeviceIdleAppThreshold: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDeviceIdleAppThreshold:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mDeviceIdleNativeThreshold: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDeviceIdleNativeThreshold:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mAlwaysRunningProcessQuota: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mAlwaysRunningProcessQuota:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final dumpInfo(Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MemFreeTarget: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    const-string/jumbo v3, "ProtectedCountOnLmkdTrigger: "

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    const-string/jumbo v2, "ProtectedCountOnHomeTrigger: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    return-void
.end method
