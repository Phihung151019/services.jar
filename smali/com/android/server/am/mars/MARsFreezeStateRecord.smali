.class public final Lcom/android/server/am/mars/MARsFreezeStateRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public freezedTime:J

.field public initialStateTime:J

.field public isFrozen:Z

.field public isLcdOffFreezed:Z

.field public isLcdOnFreezed:Z

.field public isOLAFFreezed:Z

.field public mAvailableTokens:J

.field public mDetectionVer:I

.field public mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

.field public mFreezeCounts:[I

.field public mTokensUpdateTime:J

.field public mUnfreezeAbuseDetections:Landroid/util/ArraySet;

.field public mUnfreezeCounts:[I

.field public unfreezedReason:Ljava/lang/String;

.field public unfreezedTime:J


# virtual methods
.method public final abnormalRealtimeDetectionVer0(J)Z
    .locals 11

    iget-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mTokensUpdateTime:J

    sub-long v0, p1, v0

    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    const-string/jumbo v3, "MARsFreezeStateRecord"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "abnormalRealtimeDetection "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " elapsed:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    const/4 v6, 0x0

    if-gez v2, :cond_1

    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mTokensUpdateTime:J

    return v6

    :cond_1
    const/16 v2, 0xc

    shr-long/2addr v0, v2

    iget-wide v7, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    add-long/2addr v7, v0

    const-wide/16 v9, 0x200

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mTokensUpdateTime:J

    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz p1, :cond_2

    const-string/jumbo p1, "newTokens:"

    const-string p2, " adjusted available tokens: "

    invoke-static {p1, v0, v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    invoke-static {p1, v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    :cond_2
    iget-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    cmp-long v0, p1, v4

    if-lez v0, :cond_3

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    return v6

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final cancelRestrictState()V
    .locals 6

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MARsFreezeStateRecord"

    const-string/jumbo v1, "updateRestrictState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    iget-object v2, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cancelRestrict uid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkgname:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "MARsPolicyManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object v4, v3, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "pkgName"

    const-string/jumbo v5, "uid"

    invoke-static {v1, v4, v2, v5}, Lcom/android/server/am/FreecessHandler$MainHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v4, v3, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, v3, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[cancel_restrict]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Abusive"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v3, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v2, v2, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v2, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpUfzContent()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeCounts:[I

    invoke-virtual {v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result v4

    aget v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%-4d|"

    const/4 v6, 0x1

    invoke-static {v5, v4, v0, v3, v6}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleAbnormalApp(J)V
    .locals 8

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MARsFreezeStateRecord"

    const-string/jumbo v2, "handleAbnormalApp"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeCounts:[I

    aget p2, p1, v0

    if-lez p2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x2

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    aget v3, p1, v2

    if-ge p2, v3, :cond_2

    move v1, v2

    move p2, v3

    :cond_2
    add-int/2addr v2, v0

    goto :goto_1

    :cond_3
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    iget-object v0, p2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p2, p2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "[excessive_unfreez]"

    const-string/jumbo v3, "updateAbusiveAppFromBartender uid:"

    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    :try_start_0
    iget-object v5, p1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v5, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string/jumbo v6, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkgname:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type:excessive_unfreez"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_ALARM:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget v0, v5, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v5, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_4
    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_PACKET:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget v0, v5, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v5, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget v3, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Lcom/android/server/am/FreecessController;->updateAbnormalAppFirewall(IZ)V

    iget v0, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {p1, v0}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    :cond_5
    :goto_2
    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object v3, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v5, v5, Lcom/android/server/am/MARsPackageInfo;->uid:I

    const-string/jumbo v6, "excessive_unfreeze"

    invoke-virtual {v0, v5, v3, v6}, Lcom/android/server/am/MARsHandler;->sendAnomalyMsgToMainHandler(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "Abusive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_ALARM:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-virtual {p1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result p1

    if-eq p1, v1, :cond_7

    sget-object p1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_PACKET:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-virtual {p1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result p1

    if-ne p1, v1, :cond_9

    :cond_7
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-object p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v4

    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v1, p2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v0, v0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object p1, p1, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v0, p2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v1, p2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, p2}, Lcom/android/server/am/FreecessPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_8
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_9
    const-wide/16 p1, 0x200

    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    return-void

    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final updateUnfreezeState(JLjava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "ver:0 catch abnormal unfreeze detection at "

    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedTime:J

    iput-object p3, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    sget-object v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-virtual {v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeCounts:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :try_start_0
    invoke-static {p3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->reasonTypeOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    move-result p3

    aget v1, v2, p3

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, p3

    sget-boolean p3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-boolean p3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-object v1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    invoke-virtual {p3, v1}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->abnormalRealtimeDetectionVer0(J)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string/jumbo p3, "MARsFreezeStateRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->handleAbnormalApp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
