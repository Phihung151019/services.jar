.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mChainIdOffset:I

.field public mLargestChainId:I

.field public mUids:Landroid/util/ArrayMap;


# direct methods
.method public static -$$Nest$mclearHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    iget-object v0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    iget-object p2, p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static -$$Nest$mfilter(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p9

    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_0

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move/from16 v6, p6

    invoke-virtual {v0, v6}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    :cond_0
    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_13

    iget-object v5, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    iget-object v6, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v5, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    :cond_1
    iget-object v6, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_11

    iget-object v7, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    iget-object v7, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    iget-object v7, v13, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move v14, v7

    :goto_2
    if-ltz v14, :cond_f

    iget-object v7, v13, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/lit8 v10, p5, 0x8

    if-eqz v10, :cond_3

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v15, p8

    invoke-static {v15, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v13, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move/from16 v17, v4

    move-object/from16 v20, v8

    :cond_2
    :goto_3
    const/16 v16, -0x1

    goto/16 :goto_a

    :cond_3
    move-object/from16 v15, p8

    :cond_4
    iget-object v7, v13, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    iget-object v10, v13, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v10, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_4
    if-ltz v10, :cond_e

    iget-object v12, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    and-int/lit8 v16, p5, 0x4

    if-eqz v16, :cond_5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v12, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    :cond_5
    iget-object v1, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_c

    iget-object v3, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v2, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 p6, v7

    iget-object v7, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget v17, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->$r8$clinit:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    move/from16 v17, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v15}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v18, 0x0

    move/from16 v0, v18

    :goto_6
    if-ge v0, v15, :cond_a

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v0

    move-object/from16 v0, v18

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    move-object/from16 v18, v2

    iget v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v20, v0

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;

    if-eqz v2, :cond_7

    move v0, v10

    move-object v10, v7

    move-object v7, v2

    move-object/from16 v2, p6

    move/from16 p6, v15

    move-object v15, v12

    move-object/from16 v12, v20

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-virtual {v7}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move-object/from16 v20, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    goto :goto_9

    :cond_6
    :goto_7
    move-object/from16 v20, v8

    goto :goto_8

    :cond_7
    move-object/from16 v2, p6

    move v0, v10

    move/from16 p6, v15

    move-object v10, v7

    move-object v15, v12

    move-object/from16 v12, v20

    goto :goto_7

    :cond_8
    :goto_8
    iget v7, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    and-int v7, v7, p10

    if-eqz v7, :cond_9

    iget-wide v7, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    move-wide/from16 v21, v7

    iget-wide v7, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    add-long v21, v7, v21

    cmp-long v21, v21, p1

    if-lez v21, :cond_9

    cmp-long v7, v7, p3

    if-gez v7, :cond_9

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_9
    add-int/lit8 v7, v19, 0x1

    move-object v8, v10

    move v10, v0

    move v0, v7

    move-object v7, v8

    move-object v12, v15

    move-object/from16 v8, v20

    move/from16 v15, p6

    move-object/from16 p6, v2

    move-object/from16 v2, v18

    goto :goto_6

    :cond_a
    move-object/from16 v2, p6

    move-object/from16 v20, v8

    move v0, v10

    move-object v15, v12

    iget-object v7, v15, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v15, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_b
    const/16 v16, -0x1

    add-int/lit8 v1, v1, -0x1

    move v10, v0

    move-object v7, v2

    move-object v12, v15

    move/from16 v4, v17

    move-object/from16 v8, v20

    move-object/from16 v0, p0

    move-object/from16 v15, p8

    move-object/from16 v2, p9

    goto/16 :goto_5

    :cond_c
    move/from16 v17, v4

    move-object v2, v7

    move-object/from16 v20, v8

    move v0, v10

    iget-object v1, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    iget-object v1, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_d
    const/16 v16, -0x1

    add-int/lit8 v10, v0, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v15, p8

    move-object v7, v2

    move/from16 v4, v17

    move-object/from16 v8, v20

    move-object/from16 v2, p9

    goto/16 :goto_4

    :cond_e
    move/from16 v17, v4

    move-object/from16 v20, v8

    iget-object v0, v13, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    iget-object v0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v13, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto/16 :goto_3

    :goto_a
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p9

    move/from16 v4, v17

    move-object/from16 v8, v20

    goto/16 :goto_2

    :cond_f
    move/from16 v17, v4

    iget-object v0, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    iget-object v0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_10
    const/16 v16, -0x1

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p9

    move/from16 v4, v17

    goto/16 :goto_1

    :cond_11
    move/from16 v17, v4

    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    iget-object v1, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_12
    const/16 v16, -0x1

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v1, p7

    move-object/from16 v2, p9

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public static -$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;J)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    iget-object v5, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    iget-object v7, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    iget-object v8, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_3

    iget-object v10, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    iget-object v11, v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_2

    iget-object v13, v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    iget-object v14, v13, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_1

    iget-object v2, v13, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v16, v1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    new-instance v19, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    move/from16 v17, v3

    move-object/from16 v28, v4

    iget-wide v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    sub-long v22, v3, p1

    iget v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move/from16 v26, v3

    move/from16 v27, v4

    iget-wide v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    move-wide/from16 v24, v3

    iget v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    iget v0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    move/from16 v21, v0

    move/from16 v20, v3

    invoke-direct/range {v19 .. v27}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;-><init>(IIJJII)V

    move-object/from16 v0, v19

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v17

    move/from16 v0, v18

    move-object/from16 v4, v28

    goto :goto_5

    :cond_0
    move/from16 v17, v3

    move-object/from16 v28, v4

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_4

    :cond_1
    move/from16 v16, v1

    move/from16 v17, v3

    move-object/from16 v28, v4

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_3

    :cond_2
    move/from16 v16, v1

    move/from16 v17, v3

    move-object/from16 v28, v4

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_3
    move/from16 v16, v1

    move/from16 v17, v3

    move-object/from16 v28, v4

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_4
    move/from16 v16, v1

    move/from16 v17, v3

    add-int/lit8 v3, v17, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static -$$Nest$mreadFromFile(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/io/File;J)V
    .locals 7

    const-string v0, " "

    const-string v1, "Dropping unsupported discrete history "

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    const-string/jumbo v4, "h"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v4, "v"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-static {v3, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "u"

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ui"

    const/4 v6, -0x1

    invoke-interface {v3, v5, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    move-result-object v4

    invoke-virtual {v4, v3, p2, p3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :cond_2
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    sget p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->$r8$clinit:I

    const-string p2, "DiscreteOpsXmlRegistry"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read file "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    throw p0

    :catch_1
    :goto_2
    return-void
.end method

.method public static -$$Nest$mwriteToStream(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/io/FileOutputStream;)V
    .locals 32

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v2, "h"

    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "v"

    const/4 v5, 0x1

    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "lc"

    iget v5, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_a

    const-string/jumbo v7, "u"

    invoke-interface {v1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string/jumbo v9, "ui"

    invoke-interface {v1, v3, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    iget-object v9, v8, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_9

    const-string/jumbo v11, "p"

    invoke-interface {v1, v3, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v12, v8, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v13, "pn"

    invoke-interface {v1, v3, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v12, v8, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    iget-object v13, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_8

    const-string/jumbo v15, "o"

    invoke-interface {v1, v3, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v0, "op"

    invoke-interface {v1, v3, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    iget-object v5, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_7

    move/from16 v17, v4

    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move/from16 v18, v5

    iget-object v5, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    move-object/from16 v19, v0

    iget-object v0, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move/from16 v20, v3

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    move/from16 v21, v0

    const-string/jumbo v0, "a"

    move/from16 v22, v6

    const/4 v6, 0x0

    invoke-interface {v1, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v23, v8

    if-eqz v6, :cond_0

    const-string/jumbo v8, "at"

    move/from16 v24, v9

    const/4 v9, 0x0

    invoke-interface {v1, v9, v8, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    :cond_0
    move/from16 v24, v9

    const/4 v9, 0x0

    :goto_5
    iget-object v6, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_5

    move/from16 v25, v3

    const-string/jumbo v3, "e"

    move-object/from16 v26, v5

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    move/from16 v16, v8

    move/from16 v27, v9

    iget-wide v8, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    move-object/from16 v28, v6

    const-string/jumbo v6, "nt"

    move/from16 v29, v10

    const/4 v10, 0x0

    invoke-interface {v1, v10, v6, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v8, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    const-wide/16 v30, -0x1

    cmp-long v6, v8, v30

    if-eqz v6, :cond_1

    const-string/jumbo v6, "nd"

    invoke-interface {v1, v10, v6, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget v6, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-eqz v6, :cond_2

    const-string/jumbo v8, "af"

    invoke-interface {v1, v10, v8, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    const/4 v6, -0x1

    iget v8, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    if-eq v8, v6, :cond_3

    const-string/jumbo v6, "ci"

    invoke-interface {v1, v10, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    const-string/jumbo v6, "default:0"

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "di"

    invoke-interface {v1, v10, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    const-string/jumbo v6, "us"

    iget v8, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    invoke-interface {v1, v10, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "f"

    iget v5, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    invoke-interface {v1, v10, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v10, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v9, v27, 0x1

    move/from16 v8, v16

    move/from16 v3, v25

    move-object/from16 v5, v26

    move-object/from16 v6, v28

    move/from16 v10, v29

    goto :goto_6

    :cond_5
    move/from16 v25, v3

    move-object/from16 v26, v5

    move/from16 v29, v10

    const/4 v10, 0x0

    invoke-interface {v1, v10, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v25, 0x1

    move/from16 v0, v21

    move/from16 v6, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v29

    goto/16 :goto_4

    :cond_6
    move/from16 v22, v6

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v29, v10

    const/4 v10, 0x0

    add-int/lit8 v3, v20, 0x1

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v0, v19

    move/from16 v10, v29

    goto/16 :goto_3

    :cond_7
    move/from16 v17, v4

    move/from16 v22, v6

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v29, v10

    const/4 v10, 0x0

    invoke-interface {v1, v10, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object v3, v10

    move/from16 v10, v29

    goto/16 :goto_2

    :cond_8
    move/from16 v17, v4

    move/from16 v22, v6

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v29, v10

    move-object v10, v3

    invoke-interface {v1, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v29, 0x1

    move v10, v0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_9
    move-object v10, v3

    move/from16 v17, v4

    move/from16 v22, v6

    invoke-interface {v1, v10, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v22, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_a
    move-object v10, v3

    invoke-interface {v1, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    iput p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mChainIdOffset:I

    iput p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    return-void
.end method


# virtual methods
.method public final addDiscreteAccess(IIIIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move/from16 v0, p6

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mChainIdOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    if-le v1, v2, :cond_0

    iput v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mChainIdOffset:I

    :cond_1
    :goto_0
    move v10, v1

    goto :goto_1

    :cond_2
    move v10, v0

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    move-result-object p0

    move-object/from16 p2, p11

    invoke-virtual {p0, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    new-instance p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda0;-><init>(I)V

    move-object/from16 p2, p12

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    move-object/from16 p1, p13

    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    if-lez p1, :cond_3

    add-int/lit8 p2, p1, -0x1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide v0, p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    div-long v4, p7, v2

    mul-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    :cond_3
    move/from16 v9, p5

    goto :goto_3

    :cond_4
    iget v0, p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    if-ne v0, p3, :cond_6

    iget v0, p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    if-ne v0, p4, :cond_6

    iget v0, p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    move/from16 v9, p5

    if-ne v0, v9, :cond_7

    iget v0, p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    if-ne v0, v10, :cond_7

    invoke-static/range {p9 .. p10}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeDuration(J)J

    move-result-wide v0

    iget-wide v4, p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    invoke-static {v4, v5}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeDuration(J)J

    move-result-wide v4

    cmp-long p2, v0, v4

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    move/from16 v9, p5

    :cond_7
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :goto_3
    new-instance v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    move v4, p3

    move v3, p4

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    invoke-direct/range {v2 .. v10}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;-><init>(IIJJII)V

    invoke-interface {p0, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    iget v3, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    iget-object v2, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_9

    iget-object v5, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    invoke-virtual {v0, v5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    move-result-object v5

    iget-object v7, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_8

    iget-object v9, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    invoke-virtual {v5, v9}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    move-result-object v9

    iget-object v11, v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_7

    iget-object v13, v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v14, v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    invoke-virtual {v9, v13}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    move-result-object v13

    iget-object v15, v14, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v15, :cond_6

    iget-object v0, v14, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v14, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    move/from16 v16, v2

    iget-object v2, v13, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    move/from16 v17, v3

    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda0;

    move/from16 v18, v4

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v4

    :goto_4
    if-ge v3, v2, :cond_5

    iget-object v4, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move/from16 v19, v2

    iget-object v2, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v20, v1

    invoke-virtual {v0, v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move/from16 v21, v3

    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    sget v22, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->$r8$clinit:I

    move-object/from16 v22, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 v23, v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v24, v6

    new-instance v6, Ljava/util/ArrayList;

    move/from16 v25, v7

    add-int v7, v0, v5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v26, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_5
    if-lt v7, v0, :cond_1

    if-ge v8, v5, :cond_0

    goto :goto_6

    :cond_0
    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v21, 0x1

    move/from16 v2, v19

    move-object/from16 v1, v20

    move-object/from16 v0, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move/from16 v7, v25

    move/from16 v8, v26

    const/4 v4, 0x0

    goto :goto_4

    :cond_1
    :goto_6
    if-ne v7, v0, :cond_2

    add-int/lit8 v27, v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v8, v27

    goto :goto_5

    :cond_2
    if-ne v8, v5, :cond_3

    add-int/lit8 v27, v7, 0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v7, v27

    goto :goto_5

    :cond_3
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    move/from16 v28, v0

    move-object/from16 v0, v27

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    move-object/from16 v29, v3

    move-object/from16 v27, v4

    iget-wide v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    move-wide/from16 v30, v3

    iget-wide v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v0, v30, v3

    if-gez v0, :cond_4

    add-int/lit8 v0, v7, 0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v0

    :goto_7
    move-object/from16 v4, v27

    move/from16 v0, v28

    move-object/from16 v3, v29

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v8, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v0

    goto :goto_7

    :cond_5
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    add-int/lit8 v3, v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v4, v18

    goto/16 :goto_3

    :cond_6
    move/from16 v16, v2

    move/from16 v18, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_7
    move/from16 v16, v2

    move/from16 v18, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    add-int/lit8 v8, v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_8
    move/from16 v16, v2

    move/from16 v18, v4

    add-int/lit8 v4, v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
