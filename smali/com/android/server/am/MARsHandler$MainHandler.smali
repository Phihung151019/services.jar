.class public final Lcom/android/server/am/MARsHandler$MainHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public extras:Landroid/os/Bundle;

.field public mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x1000000

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    if-eqz v2, :cond_20

    const-string/jumbo v0, "uid"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "packageName"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_17

    :cond_0
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v4, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-boolean v5, v4, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-eqz v5, :cond_1

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    const/16 v5, 0x80

    invoke-virtual {v1, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v12

    if-nez v12, :cond_2

    monitor-exit v3

    return-void

    :cond_2
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v6, v4, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v7, v4, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v8, v4, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v4, v5}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto :goto_0

    :cond_3
    move-object v5, v10

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_9

    sget-boolean v4, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v4, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v6, v4, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v6, :cond_4

    invoke-virtual {v4, v2, v0}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "manualDisable"

    invoke-virtual {v4, v2, v0, v6}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager;->disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v4

    monitor-enter v3

    :try_start_1
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v6, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    invoke-static {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v2, v0, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v4, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v2, v5, v4}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v4, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_1
    new-instance v2, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v4, :cond_6

    const-string v5, "1"

    goto :goto_2

    :cond_6
    move-object v5, v10

    :goto_2
    iput-object v5, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget v4, v0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v10

    :cond_7
    iput-object v10, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v10

    iget v9, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    :cond_8
    monitor-exit v3

    goto :goto_4

    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_9
    :goto_4
    if-eqz v10, :cond_20

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {v0, v10}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    const-string/jumbo v0, "SEP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DIS_MANUAL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_5
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_1
    if-eqz v2, :cond_20

    const-string/jumbo v0, "pkgName"

    invoke-virtual {v2, v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v0, :cond_20

    if-eq v2, v9, :cond_20

    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "disable restriction uid:"

    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "resetAbusiveEvents uid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pkgname:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    :try_start_3
    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v1, v0, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string/jumbo v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkgname:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type:excessive_unfreeze"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->resetAbusiveFlag(Lcom/android/server/am/MARsPackageInfo;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_a
    :goto_6
    monitor-exit v4

    return-void

    :goto_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :pswitch_2
    if-eqz v2, :cond_20

    const-string v0, "AppRestrictionInfo"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const-string/jumbo v2, "added_from_mars_auto_specific"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->disablePackageListForSpecific(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    return-void

    :pswitch_3
    if-nez v2, :cond_b

    goto/16 :goto_17

    :cond_b
    const-string/jumbo v0, "TCPU: case MARS_MH_NOTIFY_ANOMALY_MSG_TCPU"

    const-string/jumbo v2, "MARsHandler"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "pidList"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_c
    :goto_8
    if-ge v12, v5, :cond_f

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/2addr v12, v11

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Landroid/os/Process;->getParentPid(I)I

    move-result v9

    if-ne v9, v7, :cond_d

    goto :goto_8

    :cond_d
    const-string/jumbo v10, "zygote"

    const-string/jumbo v14, "zygote64"

    filled-new-array {v10, v14}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v10

    new-instance v14, Lcom/android/server/am/MARsHandler$MainHandler$$ExternalSyntheticLambda0;

    invoke-direct {v14, v9}, Lcom/android/server/am/MARsHandler$MainHandler$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v10, v14}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Landroid/os/Process;->getUidForPid(I)I

    move-result v9

    const/16 v10, 0x2710

    if-lt v9, v10, :cond_c

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "TCPU: java pid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " native pid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v16

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v13 .. v24}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v5, "/data/log/TCPU.log"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a4

    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e8

    const/16 v3, 0x3ef

    invoke-static {v0, v2, v3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_10
    const-string/jumbo v0, "Log file not generated."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_a

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_11

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.sdhms.action.TCPU_LOG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "tcpu_log"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v5, v0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    invoke-direct {v3, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    new-instance v1, Lcom/android/server/am/MARsPolicyManager$1;

    invoke-direct {v1, v0, v4}, Lcom/android/server/am/MARsPolicyManager$1;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_17

    :pswitch_4
    if-eqz v2, :cond_20

    const-string/jumbo v0, "pkgName"

    invoke-virtual {v2, v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "uid"

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v5, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_20

    if-eq v3, v9, :cond_20

    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_20

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.android.sdhms.action.FGS_ANOMALY"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "userId"

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v7, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v7, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.android.sdhms"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v6, v1, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notifyAnomalyApp pkgname:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "MARsPolicyManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "NOTI"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_5
    if-nez v2, :cond_12

    goto/16 :goto_17

    :cond_12
    const-string/jumbo v0, "pkgName"

    invoke-virtual {v2, v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v0, :cond_20

    if-eq v2, v9, :cond_20

    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    :try_start_5
    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v1, v0, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-wide v7, v0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf731400

    cmp-long v1, v4, v6

    if-ltz v1, :cond_13

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    sget v1, Lcom/android/server/am/MARsPolicyManager;->FGS_BATTERY_USAGE_THRESHOLD:I

    int-to-double v6, v1

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_13

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->isAnomalyFGSPackage(I)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object v2, v0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    const-string/jumbo v5, "excessive_fgs"

    invoke-virtual {v1, v4, v2, v5}, Lcom/android/server/am/MARsHandler;->sendAnomalyMsgToMainHandler(ILjava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_d

    :cond_13
    :goto_b
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v10, :cond_20

    sget-object v1, Lcom/android/server/am/mars/MARsBigData$MARsBigDataHolder;->INSTANCE:Lcom/android/server/am/mars/MARsBigData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_6
    const-string/jumbo v0, "PKGN"

    iget-object v3, v10, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v3, "UID"

    iget v4, v10, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v3, "NUSD"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v10, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    div-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "BUSE"

    iget-wide v4, v10, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_c
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FGSN"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/mars/MARsBigData;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :goto_d
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :pswitch_6
    if-eqz v2, :cond_20

    const-string/jumbo v0, "pkgName"

    invoke-virtual {v2, v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "minAdj"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "allowRestart"

    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "reason"

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "kill package processes. pkgName="

    const-string v5, ", uid="

    const-string v6, ", userId="

    invoke-static {v13, v4, v0, v5, v6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", minAdj="

    const-string v6, ", allowRestart="

    invoke-static {v14, v15, v5, v6, v4}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "MARsHandler"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_20

    if-eq v13, v9, :cond_20

    if-eq v14, v9, :cond_20

    if-eq v15, v9, :cond_20

    if-eqz v3, :cond_20

    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v12, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move/from16 v16, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/am/ActivityManagerService;->killProcessForMARs(IIIZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_7
    if-eqz v2, :cond_20

    const-string/jumbo v0, "pkgName"

    invoke-virtual {v2, v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    if-eqz v14, :cond_20

    if-eq v15, v9, :cond_20

    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "bucket"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "byUser"

    invoke-virtual {v0, v2, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "callSetAppStandbyBucket exception:"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_8
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v4, :cond_14

    const-class v4, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    goto :goto_e

    :catchall_4
    move-exception v0

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_f

    :cond_14
    :goto_e
    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    const/16 v17, 0x700

    const/16 v18, 0x0

    invoke-interface/range {v13 .. v19}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBucketForMARs(Ljava/lang/String;IIIZZ)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_10

    :goto_f
    :try_start_9
    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_10
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_17

    :goto_11
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_8
    if-eqz v2, :cond_20

    const-string/jumbo v0, "userId"

    sget-object v3, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object v3, v3, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0x8000

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v12, v5, :cond_20

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_15

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_15

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v5, v4, :cond_15

    invoke-virtual {v1, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->isPackageAutoDisabled(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {v0, v11, v11, v6}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(IIILjava/lang/String;)Z

    :cond_15
    add-int/2addr v12, v11

    goto :goto_12

    :pswitch_9
    if-eqz v2, :cond_20

    const-string/jumbo v0, "extraType"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "packageList"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "uidList"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_20

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "com.sec.android.mars.APP_SLEEP_NOTIFY"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "specificpackagelist"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v2, "specificpackageUidlist"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v5, v1, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    invoke-direct {v3, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v2, "NOTI"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_a
    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    monitor-enter v2

    :try_start_a
    iget-boolean v0, v2, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    monitor-exit v2

    if-nez v0, :cond_20

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->checkUnusedTargetForDeepSleep()V

    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_20

    const-string/jumbo v1, "debug"

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    return-void

    :catchall_5
    move-exception v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0

    :pswitch_b
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->triggerAction()V

    return-void

    :pswitch_c
    invoke-virtual {v1}, Lcom/android/server/am/MARsHandler$MainHandler;->handlePolicyCanceled()V

    return-void

    :pswitch_d
    invoke-virtual {v1}, Lcom/android/server/am/MARsHandler$MainHandler;->handleSpecificPackage()V

    return-void

    :pswitch_e
    if-eqz v2, :cond_20

    const-string/jumbo v0, "changedTime"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v1, :cond_16

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onAppUsedForTimeChanged -- SystemTime Changed : "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0x1b7740

    cmp-long v1, v7, v9

    if-gez v1, :cond_17

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v1, "SystemTime Changed Less than 30 min, didn\'t care!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    move v7, v12

    :goto_13
    :try_start_c
    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v8, v8, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_1a

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v8, v8, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    move v9, v12

    :goto_14
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_19

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/MARsPackageInfo;

    iget-wide v13, v10, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    cmp-long v13, v13, v5

    if-eqz v13, :cond_18

    iput-wide v2, v10, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    iput-wide v2, v10, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    new-instance v13, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v13}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object v14, v10, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object v14, v13, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget v14, v10, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget v14, v10, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    iget-wide v14, v10, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v13, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :catchall_6
    move-exception v0

    goto :goto_16

    :cond_18
    :goto_15
    add-int/2addr v9, v11

    goto :goto_14

    :cond_19
    add-int/2addr v7, v11

    goto :goto_13

    :cond_1a
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    return-void

    :goto_16
    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v0

    :pswitch_f
    if-nez v2, :cond_1b

    goto/16 :goto_17

    :cond_1b
    const-string/jumbo v0, "pkgName"

    invoke-virtual {v2, v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v0, :cond_20

    if-eq v2, v9, :cond_20

    iget-object v3, v1, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "mode"

    invoke-virtual {v3, v4, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_e
    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    if-nez v4, :cond_1c

    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iput-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    :cond_1c
    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    if-eqz v1, :cond_20

    const/16 v4, 0x46

    invoke-interface {v1, v4, v2, v0, v3}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_17

    :catch_3
    move-exception v0

    const-string/jumbo v1, "updateFasState exception:"

    const-string/jumbo v2, "MARsPolicyManager"

    invoke-static {v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_17

    :pswitch_10
    iget-object v0, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getBatteryStats()V

    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object v1, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v1, :cond_1d

    goto :goto_17

    :cond_1d
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const-wide/32 v2, 0x2932e00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :pswitch_11
    iget-object v2, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    monitor-enter v2

    :try_start_f
    iget-boolean v0, v2, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    monitor-exit v2

    if-nez v0, :cond_20

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->updateFromMARsMainThread()V

    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v0, v12}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(Z)V

    return-void

    :catchall_7
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v0

    :pswitch_12
    iget-object v1, v1, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v0

    if-nez v0, :cond_20

    monitor-enter v1

    :try_start_11
    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    monitor-exit v1

    if-nez v0, :cond_20

    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v0, v0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    if-eqz v0, :cond_1e

    goto :goto_17

    :cond_1e
    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->triggerAction()V

    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    if-ne v3, v11, :cond_1f

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lcom/android/server/am/MARsHandler;->sendRepeatTriggerMsgToMainHandler()V

    return-void

    :cond_1f
    if-ne v3, v7, :cond_20

    invoke-virtual {v0}, Lcom/android/server/am/MARsHandler;->sendRepeatTriggerMsgToMainHandler()V

    return-void

    :catchall_8
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    throw v0

    :cond_20
    :goto_17
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handlePolicyCanceled()V
    .locals 14

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string/jumbo v2, "packageList"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "policy-num"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "userId"

    sget-object v6, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object v6, v6, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v5, v4

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7, v2, v3, v6, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(IILjava/lang/String;Z)V

    add-int/2addr v5, v0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    move v6, v4

    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v7, v7, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v8, 0x0

    if-ge v6, v7, :cond_9

    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v7, v7, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    move v9, v4

    :goto_2
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_8

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/MARsPackageInfo;

    iput v4, v10, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    sget-boolean v11, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v11, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v12, v11, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v12, :cond_2

    iget-object v12, v10, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v13, v10, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v11, v13, v12}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, v10, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v10, v10, Lcom/android/server/am/MARsPackageInfo;->userId:I

    const-string v13, "CancelPolicy"

    invoke-virtual {v11, v10, v12, v13}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_2
    iget-object v11, v10, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v11, :cond_6

    iget v11, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v11, v2, :cond_6

    const/4 v11, 0x6

    if-ne v2, v11, :cond_3

    iput v4, v10, Lcom/android/server/am/MARsPackageInfo;->sbike:I

    :cond_3
    const/16 v11, 0x8

    if-ne v2, v11, :cond_5

    iget-boolean v11, v10, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-nez v11, :cond_4

    iget v11, v10, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v11}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iput-object v8, v10, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    :cond_6
    iget-object v11, v10, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-nez v11, :cond_7

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/2addr v9, v0

    goto :goto_2

    :cond_8
    add-int/2addr v6, v0

    goto :goto_1

    :cond_9
    move v2, v4

    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_a

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v9, v6, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v6, v6, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v7, v6, v9}, Lcom/android/server/am/MARsPkgMap;->remove(ILjava/lang/String;)V

    add-int/2addr v2, v0

    goto :goto_4

    :cond_a
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_c

    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    :try_start_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v3, :cond_b

    iget-object v5, v3, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v3, v3, Lcom/android/server/am/MARsPackageInfo;->userId:I

    goto :goto_6

    :cond_b
    const/4 v3, -0x1

    move-object v5, v8

    :goto_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, v5, v3, v0}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    add-int/2addr v4, v0

    goto :goto_5

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_c
    :goto_7
    return-void

    :goto_8
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final handleSpecificPackage()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_0

    goto/16 :goto_15

    :cond_0
    const-string/jumbo v3, "packageList"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "policy-num"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "userId"

    sget-object v7, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object v7, v7, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v3, :cond_1e

    const/4 v8, 0x6

    if-eq v3, v8, :cond_19

    const/16 v4, 0x9

    if-eq v3, v4, :cond_18

    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v10

    if-eqz v10, :cond_17

    iget-boolean v11, v10, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v11, :cond_1

    goto/16 :goto_11

    :cond_1
    sget-object v11, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    invoke-virtual {v11}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    sget-object v11, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v11

    move v12, v5

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x2

    if-ge v12, v13, :cond_9

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    move-result v15

    if-eqz v13, :cond_5

    move/from16 v16, v5

    const-string v5, ","

    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, ","

    invoke-virtual {v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    array-length v13, v5

    if-ne v13, v14, :cond_4

    aget-object v13, v5, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_2

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    :try_start_1
    aget-object v5, v5, v1

    if-eqz v5, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :catch_0
    :try_start_2
    const-string/jumbo v5, "MARsPolicyManager"

    const-string/jumbo v7, "forceRunPolicyForSpecificPackage parseInt error!"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v5, v13, v15}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    move/from16 v16, v5

    :cond_6
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v5, v13, v15}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_8

    iget-object v7, v5, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v13, v5, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    if-nez v15, :cond_7

    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15, v14}, Landroid/util/SparseArray;-><init>(I)V

    invoke-virtual {v4, v7, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v15, v13, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    add-int/2addr v12, v1

    move/from16 v5, v16

    goto :goto_0

    :cond_9
    move/from16 v16, v5

    move/from16 v2, v16

    :goto_4
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_d

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move/from16 v7, v16

    :goto_5
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_c

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/MARsPackageInfo;

    iget-object v13, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v15, v12, Lcom/android/server/am/MARsPackageInfo;->userId:I

    iget v6, v10, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v0, v15, v6, v13}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(IILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_6

    :cond_a
    sget-object v6, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    iget-object v13, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v15, v12, Lcom/android/server/am/MARsPackageInfo;->userId:I

    iget v14, v12, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v15, v14, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    move-result v6

    if-lez v6, :cond_b

    goto :goto_6

    :cond_b
    new-instance v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v13, v12, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v14, v12, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget v15, v12, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-direct {v6, v13, v14, v15}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v12, v6}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/2addr v7, v1

    const/4 v14, 0x2

    goto :goto_5

    :cond_c
    add-int/2addr v2, v1

    const/4 v14, 0x2

    goto :goto_4

    :cond_d
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    move/from16 v5, v16

    :goto_7
    if-ltz v4, :cond_10

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    sget-boolean v7, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v7, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v11, v7, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v11, :cond_e

    iget-object v11, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v12, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-virtual {v7, v12, v11}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v12, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    const-string/jumbo v13, "SMKill"

    invoke-virtual {v7, v12, v11, v13}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_f

    :cond_e
    :goto_8
    iget-object v7, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v11, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    iget v12, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    invoke-virtual {v0, v7, v10, v11, v12}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v5, 0x3

    iput v5, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v1

    goto :goto_9

    :cond_f
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_10
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    move/from16 v2, v16

    :goto_a
    :try_start_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_16

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v7, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v11, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v12, v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-static {v7, v11, v12}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v7

    if-eqz v7, :cond_15

    invoke-static {v7, v6}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    iget-object v6, v7, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eq v6, v11, :cond_11

    iput-object v10, v7, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v6, 0x2

    if-ne v3, v6, :cond_12

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_e

    :cond_11
    const/4 v6, 0x2

    :cond_12
    :goto_b
    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v12, v7, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v13, v7, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v11, v13, v12}, Lcom/android/server/am/MARsPkgMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_13

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v12, v7, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v13, v7, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v11, v12, v13, v7}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    iget v11, v7, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v0, v11}, Lcom/android/server/am/MARsPolicyManager;->putBindTempRestrictionForForceStop(I)V

    goto :goto_c

    :cond_13
    iget-object v11, v7, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-ne v11, v12, :cond_14

    iget v11, v7, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v11}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v11

    if-eqz v11, :cond_14

    const/4 v11, 0x4

    iput v11, v7, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v12, v7, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget v13, v7, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {v11, v12, v13, v7}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILcom/android/server/am/MARsPackageInfo;)V

    iget v11, v7, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-virtual {v0, v11}, Lcom/android/server/am/MARsPolicyManager;->putBindTempRestrictionForForceStop(I)V

    :cond_14
    :goto_c
    const-string/jumbo v11, "MARsPolicyManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "add mRestrictedPackages "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " policy --"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_15
    const/4 v6, 0x2

    :goto_d
    add-int/2addr v2, v1

    goto/16 :goto_a

    :cond_16
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_1e

    const-string/jumbo v1, "SM"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :goto_e
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :goto_f
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :goto_10
    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_17
    :goto_11
    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v1, "policy is not exist or not enabled!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForSpecificPolicy(ILjava/util/ArrayList;)V

    return-void

    :cond_19
    move/from16 v16, v5

    if-eqz v2, :cond_1d

    iget-object v5, v0, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v6, v16

    :goto_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1d

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_1c

    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9

    :try_start_8
    iget-object v10, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v10, v7, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v7

    if-eqz v7, :cond_1a

    iget v10, v7, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_1b

    if-ne v3, v8, :cond_1b

    iput v1, v7, Lcom/android/server/am/MARsPackageInfo;->sbike:I

    goto :goto_13

    :cond_1a
    const/4 v11, 0x4

    :cond_1b
    :goto_13
    monitor-exit v9

    goto :goto_14

    :catchall_3
    move-exception v0

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_1c
    const/4 v11, 0x4

    :goto_14
    add-int/2addr v6, v1

    goto :goto_12

    :cond_1d
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForSpecificPolicy(ILjava/util/ArrayList;)V

    :cond_1e
    :goto_15
    return-void
.end method
