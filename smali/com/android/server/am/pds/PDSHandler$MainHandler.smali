.class public final Lcom/android/server/am/pds/PDSHandler$MainHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public extras:Landroid/os/Bundle;

.field public mPDSController:Lcom/android/server/am/PDSController;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eq v3, v4, :cond_1f

    const/4 v8, 0x7

    const/4 v9, 0x0

    if-eq v3, v8, :cond_e

    const/16 v4, 0x8

    if-ne v3, v4, :cond_d

    if-nez v2, :cond_0

    goto/16 :goto_1c

    :cond_0
    const-string/jumbo v0, "packageList"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "policy-num"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v2, :cond_6

    iget-object v0, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "userId"

    sget-object v8, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    iget-object v8, v8, Lcom/android/server/am/pds/PDSHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move v8, v7

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_23

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v10, "PDSHandler"

    const-string/jumbo v11, "cancelPolicy"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->mPDSController:Lcom/android/server/am/PDSController;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "Failed trying to stop package "

    const-string/jumbo v12, "PDSController"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "cancelPolicy"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    sget-object v13, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    monitor-enter v13

    :try_start_0
    iget-object v14, v10, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/android/server/am/pds/PDSPkgMap;->totalSize()I

    move-result v15

    if-eqz v15, :cond_2

    iget-object v14, v14, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_1

    move-object v0, v9

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    check-cast v0, Lcom/android/server/am/pds/PDSPackageInfo;

    move-object v14, v0

    goto :goto_2

    :cond_2
    move-object v14, v9

    :goto_2
    if-eqz v14, :cond_5

    iget-object v0, v14, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    if-eqz v0, :cond_4

    iget v0, v0, Lcom/android/server/am/PDSController$Policy;->num:I

    if-ne v0, v3, :cond_4

    iput-object v9, v14, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    iput v7, v14, Lcom/android/server/am/pds/PDSPackageInfo;->curLevel:I

    if-ne v3, v5, :cond_3

    iput v7, v14, Lcom/android/server/am/pds/PDSPackageInfo;->uds:I

    :cond_3
    if-ne v3, v6, :cond_4

    iput v7, v14, Lcom/android/server/am/pds/PDSPackageInfo;->mpsm:I

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_4
    :goto_3
    iget-object v0, v14, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    :try_start_1
    iget-object v0, v14, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    iget v15, v14, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    invoke-interface {v12, v0, v7, v15}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v12, "PDSController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v14, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_4
    iget-object v0, v10, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v10, v14, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    iget v11, v14, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    iget-object v12, v0, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    if-eqz v12, :cond_5

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-nez v11, :cond_5

    iget-object v0, v0, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v13

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :goto_5
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    const-string/jumbo v0, "PDSHandler"

    const-string/jumbo v2, "cancelPolicy(policyNum)"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->mPDSController:Lcom/android/server/am/PDSController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "PDSController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cancelpolicy"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    monitor-enter v8

    move v0, v7

    :goto_6
    :try_start_3
    iget-object v10, v1, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v10, v10, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v0, v10, :cond_b

    iget-object v10, v1, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v10, v10, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    move v11, v7

    :goto_7
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_a

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/pds/PDSPackageInfo;

    iget-object v13, v12, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    if-eqz v13, :cond_8

    iget v13, v13, Lcom/android/server/am/PDSController$Policy;->num:I

    if-ne v13, v3, :cond_8

    iput v7, v12, Lcom/android/server/am/pds/PDSPackageInfo;->curLevel:I

    iput-object v9, v12, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    if-ne v3, v5, :cond_7

    iput v7, v12, Lcom/android/server/am/pds/PDSPackageInfo;->uds:I

    :cond_7
    if-ne v3, v6, :cond_8

    iput v7, v12, Lcom/android/server/am/pds/PDSPackageInfo;->mpsm:I

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_8
    :goto_8
    iget-object v13, v12, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    if-nez v13, :cond_9

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v3, v7

    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_23

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/am/pds/PDSPackageInfo;

    :try_start_4
    iget-object v0, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    iget v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    invoke-interface {v2, v0, v7, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    const-string/jumbo v6, "PDSController"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed trying to stop package "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_3
    :goto_a
    iget-object v0, v1, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    iget v5, v5, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    iget-object v8, v0, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    if-eqz v8, :cond_c

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_c

    iget-object v0, v0, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :goto_b
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_d
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

    :cond_e
    if-nez v2, :cond_f

    goto/16 :goto_1c

    :cond_f
    const-string/jumbo v0, "packageList"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "policy-num"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v0, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "userId"

    sget-object v10, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    iget-object v10, v10, Lcom/android/server/am/pds/PDSHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getUserId()I

    move-result v10

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v3, v5, :cond_10

    if-eq v3, v6, :cond_10

    goto/16 :goto_1c

    :cond_10
    if-eqz v2, :cond_1e

    iget-object v10, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->mPDSController:Lcom/android/server/am/PDSController;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllRestrictedList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/am/PDSController;->mPDSTargetlist:Ljava/util/List;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    :goto_c
    iget-object v11, v10, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    iget-object v0, v11, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    sget-object v0, Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASDataManager;->getFASDataFromDB()Ljava/util/ArrayList;

    move-result-object v12

    iget-object v0, v10, Lcom/android/server/am/PDSController;->mPDSTargetlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    move v15, v7

    :goto_e
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v15, v0, :cond_16

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/FASEntity;

    new-instance v9, Lcom/android/server/am/pds/PDSPackageInfo;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v6

    const/16 v16, -0x1

    const-wide/16 v17, 0x0

    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_12

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_f

    :catch_5
    move-exception v0

    move/from16 v19, v16

    goto :goto_12

    :cond_12
    move/from16 v19, v16

    :goto_f
    :try_start_8
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_13

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    move/from16 v21, v19

    move/from16 v19, v16

    move/from16 v16, v21

    goto :goto_12

    :cond_13
    :goto_10
    move-object/from16 p1, v12

    move/from16 v0, v16

    move/from16 v12, v19

    :goto_11
    move-wide/from16 v4, v17

    goto :goto_13

    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "NumberFormatException !"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "PDSPackageInfo"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 p1, v12

    move/from16 v12, v16

    move/from16 v0, v19

    goto :goto_11

    :goto_13
    iput-object v7, v9, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    iput v12, v9, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    iput v0, v9, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    iput v6, v9, Lcom/android/server/am/pds/PDSPackageInfo;->fasType:I

    iput-wide v4, v9, Lcom/android/server/am/pds/PDSPackageInfo;->disableResetTime:J

    invoke-virtual {v14}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v14}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v4

    if-ne v4, v12, :cond_15

    invoke-virtual {v14}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v11, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-nez v5, :cond_14

    new-instance v5, Landroid/util/SparseArray;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    iget-object v6, v11, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-virtual {v5, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_14

    :cond_15
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, p1

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto/16 :goto_e

    :cond_16
    move-object/from16 p1, v12

    :goto_14
    move-object/from16 v12, p1

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto/16 :goto_d

    :cond_17
    const/4 v7, 0x0

    :goto_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1e

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1d

    sget-object v4, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    monitor-enter v4

    :try_start_9
    iget-object v5, v10, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Lcom/android/server/am/pds/PDSPkgMap;->totalSize()I

    move-result v6

    if-eqz v6, :cond_19

    iget-object v5, v5, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_16

    :cond_18
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_16
    check-cast v0, Lcom/android/server/am/pds/PDSPackageInfo;

    goto :goto_17

    :cond_19
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_1b

    const/4 v5, 0x5

    if-ne v3, v5, :cond_1a

    const/4 v5, 0x1

    iput v5, v0, Lcom/android/server/am/pds/PDSPackageInfo;->uds:I

    :goto_18
    const/16 v6, 0xa

    goto :goto_19

    :cond_1a
    const/4 v5, 0x1

    goto :goto_18

    :goto_19
    if-ne v3, v6, :cond_1c

    iput v5, v0, Lcom/android/server/am/pds/PDSPackageInfo;->mpsm:I

    goto :goto_1a

    :cond_1b
    const/4 v5, 0x1

    :cond_1c
    :goto_1a
    monitor-exit v4

    goto :goto_1b

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :cond_1d
    const/4 v5, 0x1

    :goto_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_1e
    iget-object v0, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->mPDSController:Lcom/android/server/am/PDSController;

    invoke-virtual {v0, v3}, Lcom/android/server/am/PDSController;->forceRunPolicyForSpecificPolicy(I)V

    goto :goto_1c

    :cond_1f
    iget-object v2, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->mPDSController:Lcom/android/server/am/PDSController;

    monitor-enter v2

    :try_start_a
    iget-boolean v0, v2, Lcom/android/server/am/PDSController;->mScreenOn:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit v2

    if-nez v0, :cond_23

    iget-object v0, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_20

    goto :goto_1c

    :cond_20
    const-string/jumbo v1, "policy-num"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x5

    if-eq v0, v5, :cond_21

    const/16 v6, 0xa

    if-ne v0, v6, :cond_22

    :cond_21
    invoke-virtual {v2, v0}, Lcom/android/server/am/PDSController;->forceRunPolicyForSpecificPolicy(I)V

    :cond_22
    sget-object v1, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/pds/PDSHandler;->sendFirstTriggerMsgToMainHandler(IJ)V

    :cond_23
    :goto_1c
    return-void

    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0
.end method
