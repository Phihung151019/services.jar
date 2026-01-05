.class public final Lcom/android/server/chimera/AggressivePolicyHandler;
.super Lcom/android/server/chimera/PolicyHandler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAdjustTargetFreeEndTime:J

.field public mAdjustTargetFreeFactor:D

.field public mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

.field public mHeavyLaunchBufferSize:I

.field public mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

.field public mHeavyLaunchPackageLimit:I

.field public mIsAdjustTargetFree:Z

.field public mIsHeavyLaunchOn:Z

.field public mPkgKillIntervalDefault:I

.field public mSubProcessKillList:Lcom/android/internal/util/RingBuffer;


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "wLru: "

    array-length v1, p2

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    aget-object v2, p2, v1

    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler;->dumpInfo(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-boolean p2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    invoke-virtual {p2}, Lcom/android/server/chimera/HeavyLaunchCounter;->isHeavyLaunch()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HeavyLaunch mode from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/chimera/HeavyLaunchCounter;->getLastStartedUpTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-string p2, "************** adjinfo ****************"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    const-string p2, "\n************** appinfo ****************"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    const-string p2, "\n************** kill history ****************"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-boolean p2, p2, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    if-eqz p2, :cond_10

    const-string p2, "\n************** kill sub-process info ****************"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Date Time Pid ProcessName Rss"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mSubProcessKillList:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result p2

    if-lez p2, :cond_10

    iget-object p0, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mSubProcessKillList:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length p2, p0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v0, p0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    array-length v2, p2

    if-lez v2, :cond_10

    aget-object v2, p2, v1

    const-string/jumbo v3, "weight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_4

    array-length v3, p2

    if-le v3, v5, :cond_4

    :try_start_0
    aget-object v1, p2, v4

    aget-object p2, p2, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, v1, p2}, Lcom/android/server/chimera/AggressivePolicyHandler;->setWeight(FF)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " wStandbyBucket: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v0, "set_normal_boost_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v3, "off"

    const-string/jumbo v6, "on"

    if-eqz v0, :cond_6

    array-length v0, p2

    if-le v0, v4, :cond_6

    aget-object p2, p2, v4

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    if-eqz p2, :cond_5

    move-object v3, v6

    :cond_5
    const-string/jumbo p0, "Normal kill boost : "

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string/jumbo v0, "set_heavy_boost_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    array-length v0, p2

    if-le v0, v4, :cond_8

    aget-object p2, p2, v4

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    if-eqz p2, :cond_7

    move-object v3, v6

    :cond_7
    const-string p0, "Heavy kill boost : "

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string/jumbo v0, "set_normal_kill_interval"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    array-length v0, p2

    if-le v0, v4, :cond_9

    :try_start_1
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    aget-object v0, v0, v1

    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    aput p2, v0, v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Normal kill interval : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    aget-object p0, p0, v1

    aget p0, p0, v5

    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v0, "set_heavy_kill_interval"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    array-length v0, p2

    if-le v0, v4, :cond_a

    :try_start_2
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    aget-object v0, v0, v4

    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    aput p2, v0, v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Heavy kill interval : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    aget-object p0, p0, v4

    aget p0, p0, v5

    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    goto :goto_3

    :cond_a
    const-string/jumbo p2, "info"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler;->dumpInfo(Ljava/io/PrintWriter;)V

    return-void

    :cond_b
    const-string/jumbo p2, "appinfo"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    return-void

    :cond_c
    const-string/jumbo p2, "adjinfo"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    return-void

    :cond_d
    const-string/jumbo p2, "history"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "Chimera Kill History:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    return-void

    :cond_e
    const-string/jumbo p2, "quotakill"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p2, Lcom/android/server/chimera/SystemRepository;->IS_SHIP_BUILD:Z

    if-eqz p2, :cond_f

    const-string/jumbo p0, "No support in ship build"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0x10

    iput p2, p1, Landroid/os/Message;->what:I

    iput v4, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mSystemEventListenerHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    :goto_3
    return-void
.end method

.method public final dumpInfo(Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ScoreWeight: lru="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " standbybucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Normal kill interval : "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    const/4 v2, 0x1

    aget-object v0, v0, v2

    aget v0, v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Heavy kill interval : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Kill boost mode: off"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Kill boost mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    const-string v2, ""

    if-eqz v1, :cond_2

    const-string v1, " Normal"

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    if-eqz p0, :cond_3

    const-string v2, " Heavy"

    :cond_3
    invoke-static {v0, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/chimera/PolicyHandler;->prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "AggressivePolicyHandler"

    const-string/jumbo v2, "executePolicy() - prepareForTrigger fails"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_0
    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v6, "AggressivePolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "executePolicy() - triggerSource: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v4, v1, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    add-int/2addr v4, v3

    iput v4, v1, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v9, v4, v8

    add-int/2addr v9, v3

    aput v9, v4, v8

    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PSI_MEM_MONITOR:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/16 v8, 0x13

    const-wide/16 v9, 0x2800

    const/4 v11, 0x4

    if-ne v0, v4, :cond_2

    move/from16 v12, p2

    if-ne v12, v3, :cond_2

    :cond_1
    move/from16 v20, v3

    move/from16 v16, v5

    move-wide/from16 v17, v6

    move/from16 p2, v11

    goto/16 :goto_10

    :cond_2
    iget-object v12, v1, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-boolean v12, v12, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    if-eqz v12, :cond_1

    iget v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillTriggerCnt:I

    add-int/2addr v4, v3

    iput v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillTriggerCnt:I

    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne v0, v4, :cond_4

    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v0}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    move-result-wide v12

    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget-wide v14, v0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    iget-boolean v0, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    move/from16 v16, v5

    move-wide/from16 v17, v6

    if-eqz v0, :cond_3

    iget-wide v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    cmp-long v0, v17, v5

    if-gez v0, :cond_3

    long-to-double v4, v14

    iget-wide v6, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    mul-double/2addr v4, v6

    double-to-long v14, v4

    :cond_3
    sub-long v4, v14, v12

    cmp-long v0, v4, v9

    if-gtz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "AggressivePolicyHandler"

    const-string/jumbo v2, "available memory: "

    const-string v3, ", free memory target: "

    invoke-static {v2, v12, v13, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", quit chimera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v16

    :cond_4
    move/from16 v16, v5

    move-wide/from16 v17, v6

    :cond_5
    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v4, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v0}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v0, v16

    :goto_0
    if-ge v0, v7, :cond_1e

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v0, 0x1

    check-cast v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    const/16 v12, 0x2710

    if-ge v0, v12, :cond_6

    :goto_1
    move v0, v10

    goto :goto_0

    :cond_6
    iget-object v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, ":"

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "isMainProc"

    invoke-virtual {v4, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-wide v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x1388

    cmp-long v0, v12, v14

    if-gez v0, :cond_8

    const-string/jumbo v0, "lastActivityTime"

    invoke-virtual {v4, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    if-ne v0, v8, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-wide v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    sub-long/2addr v12, v14

    iget v0, v4, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    int-to-long v14, v0

    cmp-long v0, v12, v14

    if-gez v0, :cond_9

    const-string/jumbo v0, "PROCESS_STATE_CACHED_EMPTY"

    invoke-virtual {v4, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v12, 0xa

    if-ne v0, v12, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-wide v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    sub-long/2addr v12, v14

    iget v0, v4, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    int-to-long v14, v0

    cmp-long v0, v12, v14

    if-gez v0, :cond_a

    const-string/jumbo v0, "PROCESS_STATE_SERVICE"

    invoke-virtual {v4, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    if-gt v0, v3, :cond_b

    const-string/jumbo v0, "PROCESS_STATE_PERSISTENT_UI"

    invoke-virtual {v4, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    and-int/2addr v0, v11

    if-lez v0, :cond_c

    const-string/jumbo v0, "hasActivity"

    invoke-virtual {v4, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    iget-object v0, v4, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v12, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v13, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v0, v13, v12}, Lcom/android/server/chimera/SystemRepository;->hasConnectionProvider(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "hasConnectionProvider"

    invoke-virtual {v4, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v12, "sandbox"

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "isSandbox"

    invoke-virtual {v4, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v12, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v12, v12, v16

    iget-object v13, v4, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v13, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v13, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v13, v0, v12}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    const-string/jumbo v0, "isAutoRunOn"

    invoke-virtual {v4, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    sget-boolean v13, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v13, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-object v19, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v19

    :try_start_0
    invoke-virtual {v13, v0, v12}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v13, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-nez v13, :cond_10

    iget-boolean v13, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v13, :cond_10

    move v13, v11

    move-object/from16 p1, v12

    iget-wide v11, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    sub-long/2addr v14, v11

    const-wide/16 v11, 0x7d0

    cmp-long v0, v14, v11

    if-ltz v0, :cond_11

    move v0, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_10
    move v13, v11

    move-object/from16 p1, v12

    :cond_11
    move/from16 v0, v16

    :goto_2
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_12

    const-string/jumbo v0, "isUnFreezedSafely"

    invoke-virtual {v4, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    :goto_3
    move v0, v10

    move v11, v13

    goto/16 :goto_0

    :cond_12
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    if-eq v0, v8, :cond_1d

    iget-object v0, v4, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v11, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v12

    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_13

    goto :goto_4

    :cond_13
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    if-eqz v0, :cond_16

    iget-boolean v11, v0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz v11, :cond_14

    :goto_4
    move/from16 v0, v16

    goto :goto_6

    :cond_14
    iget-object v11, v0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    sub-int/2addr v11, v3

    :goto_5
    if-ltz v11, :cond_16

    iget-object v12, v0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v12, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    iget-boolean v14, v12, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iget-object v12, v12, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_15

    move v0, v2

    goto :goto_6

    :cond_15
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    :cond_16
    move v0, v3

    :goto_6
    if-nez v0, :cond_17

    const-string/jumbo v0, "isFilterByMars and isn\'t Empty"

    invoke-virtual {v4, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    goto :goto_3

    :cond_17
    if-ne v0, v2, :cond_1d

    move/from16 v0, v16

    move v11, v0

    :goto_7
    :try_start_2
    iget-object v12, v4, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v12, v12, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12, v14}, Lcom/android/server/am/ActivityManagerService;->freezeBinderForChimera(I)I

    move-result v11

    sget v12, Landroid/system/OsConstants;->EAGAIN:I

    neg-int v12, v12

    if-ne v11, v12, :cond_19

    add-int/lit8 v12, v0, 0x1

    if-lt v0, v2, :cond_18

    goto :goto_8

    :cond_18
    move v0, v12

    goto :goto_7

    :cond_19
    :goto_8
    if-eqz v11, :cond_1a

    iget-object v0, v4, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v12, "ChimeraAppManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "checkServiceSafetyKilled Unable to freeze binder for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v15, p1

    :try_start_3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 p2, v13

    :try_start_4
    const-string v13, ": "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12, v13}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    :goto_9
    move/from16 p2, v13

    goto :goto_b

    :catch_2
    move-exception v0

    move-object/from16 v15, p1

    goto :goto_9

    :cond_1a
    move/from16 p2, v13

    :goto_a
    move/from16 v20, v3

    if-nez v11, :cond_1b

    goto :goto_c

    :catchall_1
    move-exception v0

    throw v0

    :goto_b
    iget-object v12, v4, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v13, "ChimeraAppManager"

    new-instance v14, Ljava/lang/StringBuilder;

    move/from16 v20, v3

    const-string/jumbo v3, "Unable to freeze binder for "

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v11, :cond_1b

    goto :goto_c

    :cond_1b
    const-string/jumbo v0, "freeze binder failed."

    invoke-virtual {v4, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    :cond_1c
    move/from16 v11, p2

    move v0, v10

    move/from16 v3, v20

    goto/16 :goto_0

    :cond_1d
    move/from16 v20, v3

    move/from16 p2, v13

    goto :goto_c

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :goto_c
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_1c

    goto :goto_e

    :goto_d
    :try_start_6
    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_1e
    move/from16 v20, v3

    :goto_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_f
    if-ltz v2, :cond_1f

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v6, "AggressivePolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Chimera kill subProcess "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " success"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v6, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mSubProcessKillList:Lcom/android/internal/util/RingBuffer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/Debug;->getRss(I[J)J

    move-result-wide v6

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    iget v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillCnt:I

    iget v3, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    :cond_1f
    iget-object v1, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v2, "AggressivePolicyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Kill subProcess Processing time(ms) "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v17

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :goto_10
    iget-object v3, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v3}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    move-result-wide v5

    iget-object v3, v1, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget-wide v11, v3, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    iget-boolean v7, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    if-eqz v7, :cond_20

    iget-wide v13, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    cmp-long v7, v17, v13

    if-gez v7, :cond_20

    long-to-double v11, v11

    iget-wide v13, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    mul-double/2addr v11, v13

    double-to-long v11, v11

    :cond_20
    sub-long v13, v11, v5

    cmp-long v7, v13, v9

    if-gtz v7, :cond_21

    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "AggressivePolicyHandler"

    const-string/jumbo v2, "available memory: "

    const-string v3, ", free memory target: "

    invoke-static {v2, v5, v6, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", quit chimera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v16

    :cond_21
    if-ne v0, v4, :cond_22

    iget v3, v3, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    goto :goto_11

    :cond_22
    iget v3, v3, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    :goto_11
    iget-boolean v4, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    if-eqz v4, :cond_23

    iget-object v4, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    invoke-virtual {v4}, Lcom/android/server/chimera/HeavyLaunchCounter;->isHeavyLaunch()Z

    move-result v4

    if-eqz v4, :cond_23

    div-int/2addr v3, v2

    int-to-double v3, v3

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v9

    double-to-int v3, v3

    :cond_23
    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v7, "AggressivePolicyHandler"

    const-string/jumbo v9, "memAvailable: "

    const-string v10, ", memFreeTarget: "

    invoke-static {v9, v5, v6, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", releaseTarget:"

    const-string v11, ", protectedLruCount: "

    invoke-static {v9, v10, v13, v14, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v9}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v7, v16

    :goto_12
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    move-result-object v9

    array-length v9, v9

    if-ge v7, v9, :cond_24

    iget-object v9, v4, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    aget-object v9, v9, v7

    invoke-interface {v9}, Ljava/util/Set;->clear()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_24
    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v7, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    iget-object v9, v4, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v9}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v4, v7, v3, v0, v9}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x3

    if-ge v4, v7, :cond_26

    :cond_25
    move-object/from16 v27, v3

    goto/16 :goto_30

    :cond_26
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v11, v20

    const-wide/16 v9, 0x0

    const-wide/16 v21, 0x0

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/chimera/ChimeraAppInfo;

    iget-wide v7, v12, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    cmp-long v23, v7, v9

    if-lez v23, :cond_27

    move-wide v9, v7

    :cond_27
    iget v7, v12, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    if-le v7, v11, :cond_28

    move v11, v7

    :cond_28
    const/4 v7, 0x3

    const/16 v8, 0x13

    goto :goto_13

    :cond_29
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v8, v1, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    iget v12, v7, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    int-to-float v12, v12

    mul-float/2addr v8, v12

    int-to-float v12, v11

    div-float/2addr v8, v12

    iget v12, v1, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    iget v15, v7, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    int-to-float v15, v15

    mul-float/2addr v12, v15

    const/high16 v15, 0x42480000    # 50.0f

    div-float/2addr v12, v15

    add-float/2addr v12, v8

    iget v8, v1, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    move-object/from16 v24, v3

    iget-wide v2, v7, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    long-to-float v2, v2

    mul-float/2addr v8, v2

    long-to-float v2, v9

    div-float/2addr v8, v2

    add-float/2addr v8, v12

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v8, v2

    iput v8, v7, Lcom/android/server/chimera/ChimeraAppInfo;->score:F

    iget v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    rsub-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v8

    iput v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    move-object/from16 v3, v24

    const/4 v2, 0x2

    goto :goto_14

    :cond_2a
    move-object/from16 v24, v3

    new-instance v2, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v3, v24

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/server/chimera/SystemRepository;->IS_SHIP_BUILD:Z

    if-nez v2, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/chimera/ChimeraAppInfo;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_2b
    const-string/jumbo v4, "PolicyHandler"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    :goto_16
    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v4, "AggressivePolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Start doKill, protected policy: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v4, v16

    move v7, v4

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    move/from16 v10, p2

    if-lt v9, v10, :cond_2e

    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v8, "AggressivePolicyHandler"

    const-string/jumbo v9, "killing stopped to group 4"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    move-object/from16 v27, v3

    move-wide/from16 v34, v5

    const/16 v15, 0x13

    const/16 v36, 0x2

    goto/16 :goto_2d

    :cond_2e
    invoke-virtual {v1, v8, v0}, Lcom/android/server/chimera/PolicyHandler;->isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    move-result v9

    if-nez v9, :cond_2f

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-wide/from16 v34, v5

    const/16 v15, 0x13

    const/16 v36, 0x2

    goto/16 :goto_28

    :cond_2f
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v12, v16

    :goto_18
    if-ge v12, v11, :cond_37

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v15, v24

    check-cast v15, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v10, v1, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    move-object/from16 v26, v2

    iget v2, v15, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    move/from16 v28, v2

    move-object/from16 v27, v3

    iget-wide v2, v15, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    move-wide/from16 v29, v2

    iget v2, v15, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->importance:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v31, 0x12c000

    cmp-long v3, v29, v31

    if-lez v3, :cond_32

    const/16 v10, 0x64

    if-ne v2, v10, :cond_30

    sget-object v3, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    if-eqz v3, :cond_30

    filled-new-array/range {v28 .. v28}, [I

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_30

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_30

    check-cast v3, [I

    aget v3, v3, v16

    const/16 v10, 0x64

    if-lt v3, v10, :cond_30

    const/16 v10, 0x12c

    if-ge v3, v10, :cond_31

    goto :goto_19

    :cond_30
    const/16 v10, 0x12c

    :cond_31
    if-eq v2, v10, :cond_33

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_33

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_33

    const/16 v3, 0xe6

    if-eq v2, v3, :cond_33

    const/16 v3, 0x82

    if-ne v2, v3, :cond_32

    goto :goto_19

    :cond_32
    move-wide/from16 v34, v5

    const/4 v5, 0x3

    goto/16 :goto_1d

    :cond_33
    :goto_19
    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    iget-object v3, v15, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    iget-wide v10, v15, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    monitor-enter v2

    :try_start_7
    iget-object v12, v2, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    new-instance v15, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;

    move-wide/from16 v34, v5

    const/4 v5, 0x2

    invoke-direct {v15, v3, v5}, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    move-object v5, v15

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v5, v2, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v12, v16

    :goto_1a
    if-ge v12, v6, :cond_35

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v15, v25

    check-cast v15, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    move-object/from16 v25, v5

    iget-object v5, v15, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    iget v5, v15, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->count:I

    add-int/lit8 v5, v5, 0x1

    move/from16 v30, v5

    goto :goto_1b

    :catchall_3
    move-exception v0

    goto :goto_1c

    :cond_34
    move-object/from16 v5, v25

    goto :goto_1a

    :cond_35
    move/from16 v30, v20

    :goto_1b
    iget-object v5, v2, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    new-instance v28, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    move-object/from16 v33, v3

    move/from16 v29, v9

    move-wide/from16 v31, v10

    invoke-direct/range {v28 .. v33}, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;-><init>(IIJLjava/lang/String;)V

    move-object/from16 v12, v28

    move/from16 v6, v29

    move/from16 v11, v30

    move-wide/from16 v9, v31

    move-object/from16 v3, v33

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x3

    if-lt v11, v5, :cond_36

    invoke-virtual {v2, v6, v3, v9, v10}, Lcom/android/server/chimera/AbnormalFgsDetector;->addAbnormalHeavyApp(ILjava/lang/String;J)V

    :cond_36
    monitor-exit v2

    move/from16 v2, v20

    goto :goto_1e

    :goto_1c
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :goto_1d
    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-wide/from16 v5, v34

    goto/16 :goto_18

    :cond_37
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-wide/from16 v34, v5

    const/4 v5, 0x3

    move/from16 v2, v16

    :goto_1e
    iget-object v3, v8, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v3, v3, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v6, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v3

    if-nez v3, :cond_38

    move/from16 v2, v16

    :cond_38
    if-nez v2, :cond_41

    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    iget-object v3, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v9, v2

    iget-object v2, v8, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    if-nez v2, :cond_39

    const/16 v15, 0x13

    goto :goto_20

    :cond_39
    array-length v3, v2

    move/from16 v6, v16

    :goto_1f
    if-ge v6, v3, :cond_3f

    aget v11, v2, v6

    const/16 v15, 0x13

    if-ge v11, v15, :cond_3e

    :goto_20
    iget v2, v8, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-nez v2, :cond_3a

    goto :goto_23

    :cond_3a
    iget-object v2, v8, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v3, v2

    move/from16 v6, v16

    :goto_21
    if-ge v6, v3, :cond_3d

    aget v11, v2, v6

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_3c

    const/16 v5, 0xe1

    if-eq v11, v5, :cond_3c

    const/16 v5, 0xfa

    if-eq v11, v5, :cond_3c

    const/16 v5, 0x1f4

    if-eq v11, v5, :cond_3c

    const/16 v5, 0x320

    if-ne v11, v5, :cond_3b

    goto :goto_22

    :cond_3b
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x3

    goto :goto_21

    :cond_3c
    :goto_22
    const/16 v36, 0x2

    goto :goto_25

    :cond_3d
    :goto_23
    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    iget-object v3, v1, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    const/16 v36, 0x2

    aget v2, v2, v36

    :goto_24
    int-to-long v2, v2

    goto :goto_26

    :cond_3e
    const/16 v12, 0xc8

    const/16 v36, 0x2

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x3

    goto :goto_1f

    :cond_3f
    const/16 v15, 0x13

    goto :goto_22

    :goto_25
    iget v2, v1, Lcom/android/server/chimera/PolicyHandler;->mCemPkgKillIntervalMs:I

    goto :goto_24

    :goto_26
    cmp-long v5, v9, v2

    if-gez v5, :cond_40

    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    sget-object v6, Lcom/android/server/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v5, v8, v6}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Skipped by interval: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", elapsed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", interval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v5, "PolicyHandler"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v16

    goto :goto_27

    :cond_40
    move/from16 v2, v20

    :goto_27
    if-nez v2, :cond_42

    :goto_28
    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-wide/from16 v5, v34

    const/16 p2, 0x4

    goto/16 :goto_17

    :cond_41
    const/16 v15, 0x13

    const/16 v36, 0x2

    :cond_42
    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    iget-object v3, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v3, "AggressivePolicyHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Killed on trigger"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", freed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v5, v16

    :goto_29
    if-ge v5, v3, :cond_43

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v9, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v6, v6, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v10, v8, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Chimera #"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move/from16 v12, v20

    invoke-virtual {v9, v10, v6, v11, v12}, Lcom/android/server/chimera/SystemRepository;->killProcessForChimera(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_29

    :cond_43
    move/from16 v12, v20

    int-to-long v2, v4

    iget-wide v4, v8, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    add-long/2addr v2, v4

    long-to-int v4, v2

    add-int/2addr v7, v12

    invoke-virtual {v1, v8, v0}, Lcom/android/server/chimera/PolicyHandler;->updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    iget-object v2, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    sget-object v3, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    if-ne v2, v3, :cond_44

    iget-boolean v3, v1, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    if-nez v3, :cond_48

    :cond_44
    sget-object v3, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    if-ne v2, v3, :cond_45

    iget-boolean v2, v1, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    if-eqz v2, :cond_45

    goto :goto_2c

    :cond_45
    int-to-long v2, v4

    cmp-long v5, v2, v13

    if-lez v5, :cond_46

    :goto_2a
    const/4 v2, 0x1

    goto :goto_2b

    :cond_46
    sub-long v2, v13, v2

    const-wide/16 v5, 0x5000

    cmp-long v2, v2, v5

    if-gez v2, :cond_47

    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "PolicyHandler"

    const-string/jumbo v3, "relTarget - released < 20480, stop kill"

    invoke-static {v2, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :cond_47
    move/from16 v2, v16

    :goto_2b
    if-eqz v2, :cond_48

    goto :goto_2d

    :cond_48
    :goto_2c
    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-wide/from16 v5, v34

    const/16 p2, 0x4

    const/16 v20, 0x1

    goto/16 :goto_17

    :goto_2d
    iget v2, v1, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    int-to-long v5, v2

    iget-wide v8, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    mul-long/2addr v8, v5

    int-to-long v10, v4

    add-long/2addr v8, v10

    const/16 v20, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    div-long/2addr v8, v2

    iput-wide v8, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    iget-wide v8, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    mul-long/2addr v5, v8

    add-long v5, v5, v34

    add-long/2addr v5, v10

    div-long/2addr v5, v2

    iput-wide v5, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v3, "AggressivePolicyHandler"

    const-string/jumbo v5, "kill complete: killed "

    const-string v6, " apps, freed "

    const-string v8, " KB"

    invoke-static {v7, v4, v5, v6, v8}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v7, :cond_49

    sget-object v2, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    iput-object v2, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/chimera/PolicyHandler;->updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    const/16 v20, 0x1

    goto :goto_2e

    :cond_49
    iget v2, v1, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    const/16 v20, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    iget-object v2, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    sget-object v3, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    if-ne v2, v3, :cond_4a

    goto :goto_2f

    :cond_4a
    iput-object v3, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    :goto_2e
    if-eqz v7, :cond_4b

    :goto_2f
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    const-string v2, "AggressivePolicyHandler"

    invoke-virtual {v0, v2}, Lcom/android/server/chimera/SkipReasonLogger;->printLog(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "AggressivePolicyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Processing time(ms) "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v17

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_4b
    move-object/from16 v3, v27

    move-wide/from16 v5, v34

    const/16 p2, 0x4

    goto/16 :goto_16

    :goto_30
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "AggressivePolicyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "executePolicy() - getAppsToKill return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v27, :cond_4c

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_31

    :cond_4c
    move/from16 v3, v16

    :goto_31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v16
.end method

.method public final onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/android/server/chimera/PolicyHandler;->onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    if-eqz p1, :cond_0

    if-nez p6, :cond_0

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/chimera/HeavyLaunchCounter;->addLaunch(IJ)V

    :cond_0
    return-void
.end method

.method public final setWeight(FF)V
    .locals 2

    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    iput p2, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    new-instance p1, Ljava/math/BigDecimal;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/math/BigDecimal;

    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigDecimal;

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    return-void
.end method
