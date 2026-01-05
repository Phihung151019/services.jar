.class public abstract Lcom/android/server/am/mars/MARsUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    sput-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    return-void
.end method

.method public static addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mFilterHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "]\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/android/server/am/MARsPolicyManager;->mFilterHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/HistoryBuffer;->put(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static cancelAllPolicy()V
    .locals 13

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    :try_start_0
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_6

    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    move v8, v4

    :goto_1
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/MARsPackageInfo;

    sget-boolean v10, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v10, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v11, v10, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v11, :cond_0

    iget-object v11, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v12, v9, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v10, v12, v11}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v9, v9, Lcom/android/server/am/MARsPackageInfo;->userId:I

    const-string v12, "CancelPolicy"

    invoke-virtual {v10, v9, v11, v12}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    iget-object v10, v9, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v10, :cond_4

    iget-boolean v10, v9, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-nez v10, :cond_2

    iget v10, v9, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v10}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    iput-object v7, v9, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput v4, v9, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    goto :goto_3

    :cond_2
    :goto_2
    iget v10, v9, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v10}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v10

    if-eqz v10, :cond_3

    iput v4, v9, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    sget-object v10, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    iput v0, v9, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    :cond_3
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/2addr v8, v0

    goto :goto_1

    :cond_5
    add-int/2addr v5, v0

    goto :goto_0

    :cond_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v6, :cond_7

    iget-object v8, v6, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v6, v6, Lcom/android/server/am/MARsPackageInfo;->userId:I

    goto :goto_5

    :cond_7
    const/4 v6, -0x1

    move-object v8, v7

    :goto_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1, v8, v6, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    add-int/2addr v3, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_8
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_3
    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, v2, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v1, v1, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_7

    :cond_9
    :goto_6
    monitor-exit v0

    return-void

    :goto_7
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :goto_8
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static formatDateTime(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%23s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenOnState()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v0

    return v0
.end method

.method public static isChinaPolicyEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    return v0
.end method

.method public static setAllPoliciesOnOffState(IZ)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAllPoliciesOnOffState on = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MARsPolicyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "spcm_switch : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEV"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    if-eq v1, p0, :cond_8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_6

    if-eq p0, v2, :cond_3

    const/4 v3, 0x3

    if-eq p0, v3, :cond_2

    const p1, 0x98967f

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    goto :goto_0

    :cond_2
    sput-boolean v2, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v3, :cond_4

    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    invoke-virtual {v0, v2, p1}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    :cond_7
    :goto_0
    iput p0, v0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    :cond_8
    return-void
.end method

.method public static setFreezeExcludeList(Ljava/util/ArrayList;)V
    .locals 8

    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mFreezeExemptionChina:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreezeExemptionChina:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mFreezeExemptionChina:Ljava/util/Set;

    invoke-static {v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p0

    :try_start_1
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    move v2, v3

    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v6, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v7, v4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v5, v7, v6}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-boolean v3, v4, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    invoke-virtual {v0, v4}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static setPackagesUnusedLockingTime(I)V
    .locals 12

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setPackagesUnusedLockingTime hours = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    if-ne p0, v0, :cond_b

    iget-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-nez p0, :cond_1

    const-class p0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    :cond_1
    iget-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-eqz p0, :cond_5

    iget-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    monitor-enter p0

    move v3, v2

    :goto_0
    :try_start_0
    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v4, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move v5, v2

    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v6, :cond_2

    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v8, v6, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v6, v6, Lcom/android/server/am/MARsPackageInfo;->userId:I

    const/4 v9, 0x4

    invoke-interface {v7, v8, v6, v9}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    add-int/2addr v5, v0

    goto :goto_1

    :cond_3
    add-int/2addr v3, v0

    goto :goto_0

    :cond_4
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_4
    iget-boolean p0, v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz p0, :cond_a

    iget-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v5

    iget-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-nez p0, :cond_6

    const-class p0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    :cond_6
    iget-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-eqz p0, :cond_a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    monitor-enter p0

    move v3, v2

    :goto_5
    :try_start_1
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v6

    const/16 v6, 0x2d

    if-ge v3, v7, :cond_9

    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v7, v7, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    move v8, v2

    :goto_6
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v9, :cond_7

    new-instance v10, Landroid/app/usage/AppStandbyInfo;

    iget-object v9, v9, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v9, v6}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_7
    :goto_7
    add-int/2addr v8, v0

    goto :goto_6

    :cond_8
    add-int/2addr v3, v0

    goto :goto_5

    :cond_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_2
    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    const/4 v9, 0x1

    const/16 v7, 0x700

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBucketsForMARs(Ljava/util/List;IIIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object p0, v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_a
    :goto_9
    const-string p0, "DEV"

    const-string v2, "Auto restriction\'s battery condition changed !"

    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    iput-wide v2, v1, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    iput-wide v2, v1, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    iput-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    const-wide/32 v2, 0x6ddd00

    iput-wide v2, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    sget-object p0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    return-void

    :cond_b
    iget-wide v3, v1, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    iput-wide v3, v1, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    iput-boolean v2, v1, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    sget-object p0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    return-void
.end method

.method public static updateMARsTargetPackages(Ljava/util/ArrayList;)V
    .locals 19

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v6

    :try_start_0
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter v3

    :try_start_1
    iget-boolean v0, v3, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getBoundAppWidgetPackages()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_d

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/am/mars/database/FASEntity;

    new-instance v14, Lcom/android/server/am/MARsPackageInfo;

    invoke-direct {v14, v13}, Lcom/android/server/am/MARsPackageInfo;-><init>(Lcom/android/server/am/mars/database/FASEntity;)V

    invoke-virtual {v13}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v15

    :try_start_3
    invoke-virtual {v13}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v17, v11

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v10, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    move/from16 v17, v11

    const-string/jumbo v11, "NumberFormatException !"

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    :try_start_4
    iget-object v10, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v11, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    move/from16 v18, v12

    iget v12, v14, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-static {v10, v11, v12}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-boolean v11, v10, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-ne v11, v0, :cond_2

    iget v11, v10, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    if-eq v11, v15, :cond_1

    goto :goto_3

    :cond_1
    iget-boolean v0, v10, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-eqz v0, :cond_b

    iget v0, v10, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    if-nez v0, :cond_b

    const/4 v11, 0x1

    iput v11, v10, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    goto/16 :goto_6

    :cond_2
    :goto_3
    iput v15, v10, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-virtual {v13}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    const/4 v11, 0x1

    if-ne v0, v11, :cond_3

    const/16 v0, 0x20

    invoke-virtual {v3, v0, v10}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_3
    const/16 v0, 0x100

    invoke-virtual {v3, v0, v10}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    iget-boolean v0, v10, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-nez v0, :cond_4

    iget v0, v10, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_4
    iget v0, v10, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v11, 0x0

    iput v11, v10, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    :cond_5
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_6
    new-instance v0, Landroid/util/Pair;

    iget-object v10, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v11, v14, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v10, v14, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v3, v10, v0}, Lcom/android/server/am/MARsPolicyManager;->getSharedUidName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    iget v0, v14, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    const/4 v11, 0x1

    and-int/2addr v0, v11

    if-eqz v0, :cond_7

    iput-boolean v11, v14, Lcom/android/server/am/MARsPackageInfo;->hasAppIcon:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    const/4 v0, 0x4

    if-eqz v6, :cond_9

    :try_start_5
    iget-object v10, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v11, v14, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-interface {v6, v10, v11}, Landroid/content/pm/IPackageManager;->isPackageAutoDisabled(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_9

    iput v0, v14, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iput v0, v14, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    const/4 v11, 0x1

    iput-boolean v11, v14, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget v0, v14, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, v14, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    const/16 v10, 0x10

    if-eq v0, v10, :cond_8

    const/4 v11, 0x1

    iput v11, v14, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    iput v10, v14, Lcom/android/server/am/MARsPackageInfo;->state:I

    :cond_8
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v10, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v11, v14, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v0, v10, v11, v14}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_9
    iget v10, v14, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    if-ne v10, v0, :cond_a

    iget v10, v14, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v10}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v10, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v11, v14, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v0, v10, v11, v14}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :goto_4
    :try_start_6
    const-string/jumbo v10, "MARsPolicyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPkgInfoFromSMToMARs exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->initOptionFlag()V

    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v10, v14, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v11, v14, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v0, v10, v11, v14}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    :cond_b
    :goto_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    monitor-enter v3

    :try_start_7
    iget-boolean v0, v3, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v3

    if-eqz v0, :cond_c

    iget-boolean v0, v14, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v0, :cond_c

    const/4 v12, 0x1

    :goto_7
    const/16 v16, 0x1

    goto :goto_8

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :cond_c
    move/from16 v12, v18

    goto :goto_7

    :goto_8
    add-int/lit8 v11, v17, 0x1

    goto/16 :goto_1

    :goto_9
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    :cond_d
    move/from16 v18, v12

    const/4 v11, 0x0

    :goto_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_f

    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    :try_start_a
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v0, :cond_e

    iget-object v6, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    goto :goto_b

    :cond_e
    const/4 v6, 0x0

    const/4 v0, -0x1

    :goto_b
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/4 v10, 0x0

    invoke-virtual {v3, v6, v0, v10}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    const/16 v16, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :cond_f
    const/4 v10, 0x0

    move v11, v10

    :goto_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v6, v3, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    monitor-enter v6

    :try_start_c
    iget-object v8, v3, Lcom/android/server/am/MARsPolicyManager;->mScpmList:Ljava/util/HashSet;

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v8, :cond_10

    iget-object v6, v3, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    new-instance v12, Landroid/util/Pair;

    invoke-direct {v12, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "new Package : "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", SCPMTarget : "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    :cond_11
    if-eqz v18, :cond_12

    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object v2, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    invoke-virtual {v3, v1}, Lcom/android/server/am/MARsPolicyManager;->deletePkgInfoInMARs(Ljava/util/ArrayList;)V

    iget-boolean v0, v3, Lcom/android/server/am/MARsPolicyManager;->mInitDisabledPackage:Z

    if-nez v0, :cond_13

    const/4 v11, 0x1

    iput-boolean v11, v3, Lcom/android/server/am/MARsPolicyManager;->mInitDisabledPackage:Z

    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object v1, v3, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    :cond_13
    :goto_d
    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_14

    iget-object v0, v3, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v3, Lcom/android/server/am/MARsPolicyManager;->mNeedtoDisablePackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "added_from_mars_auto_specific"

    invoke-virtual {v3, v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->disablePackageForSpecific(ILjava/lang/String;Ljava/lang/String;)Z

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_14
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    const-string/jumbo v1, "deepsleepspecific"

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_15
    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v1, "updateMARsTargetPackages mMARsTargetPackages.size-"

    invoke-static {v7, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0
.end method
