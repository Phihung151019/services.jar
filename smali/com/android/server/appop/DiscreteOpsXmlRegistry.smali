.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry;
.super Lcom/android/server/appop/DiscreteOpsRegistry;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

.field public final mDiscreteAccessDir:Ljava/io/File;

.field public mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

.field public final mInMemoryLock:Lcom/android/server/appop/AppOpsService;

.field public final mOnDiskLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "appops"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "discrete"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    :try_start_0
    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DiscreteOpsXmlRegistry"

    const-string v3, "Failed to create DiscreteRegistry directory"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->readLargestChainIdFromDiskLocked()I

    move-result v0

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-direct {v2, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static extractTimestamp(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 35

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_19

    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    iget-object v3, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_18

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    iget-object v7, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_17

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    iget-object v12, v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v14, :cond_16

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    iget-object v0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    move/from16 v18, v1

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move/from16 v20, v2

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_15

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v1

    move-object/from16 v1, v21

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/String;

    move/from16 v21, v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v24, v3

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_14

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v1

    move-object/from16 v1, v25

    check-cast v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    if-eqz v1, :cond_12

    move/from16 v25, v2

    iget v2, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move/from16 v27, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v3, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    :cond_0
    move-object/from16 v28, v0

    :goto_6
    move/from16 v31, v4

    move/from16 v29, v5

    move/from16 v32, v6

    goto/16 :goto_12

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move/from16 v28, v2

    new-instance v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move/from16 v29, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    iput-object v5, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    move-object/from16 v5, p12

    iput-object v5, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    invoke-virtual {v11, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_2
    move/from16 v28, v2

    move/from16 v29, v5

    move-object/from16 v5, p12

    :goto_7
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v8, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    iput v4, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mUid:I

    iput-object v0, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    iput v15, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpCode:I

    iput-object v1, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    move-object/from16 v28, v0

    const/4 v1, 0x0

    :goto_8
    iget-object v0, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v30, v1

    iget-object v1, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    move/from16 v31, v4

    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide v4, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    move-wide/from16 v32, v4

    iget-wide v4, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    cmp-long v1, v4, v32

    if-nez v1, :cond_4

    :cond_3
    move/from16 v32, v6

    goto :goto_9

    :cond_4
    iget-object v1, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mUid:I

    iget v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mUid:I

    if-ne v1, v4, :cond_3

    iget-object v1, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpCode:I

    iget v4, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpCode:I

    if-ne v1, v4, :cond_3

    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-object v4, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    move/from16 v32, v6

    iget-wide v5, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    move-wide/from16 v33, v5

    iget-wide v5, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v5, v5, v33

    if-nez v5, :cond_5

    iget v5, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    iget v6, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    if-ne v5, v6, :cond_5

    iget v5, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    iget v6, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    if-ne v5, v6, :cond_5

    iget v5, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget v6, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-ne v5, v6, :cond_5

    iget v1, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    iget v5, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    if-ne v1, v5, :cond_5

    iget-wide v1, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    const-wide/16 v5, -0x1

    cmp-long v1, v1, v5

    if-eqz v1, :cond_13

    iput-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    goto/16 :goto_12

    :cond_5
    :goto_9
    add-int/lit8 v1, v30, 0x1

    move-object/from16 v5, p12

    move/from16 v4, v31

    move/from16 v6, v32

    goto/16 :goto_8

    :cond_6
    move/from16 v31, v4

    move/from16 v32, v6

    iget-object v0, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget v0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_7

    goto/16 :goto_d

    :cond_7
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_e

    :cond_8
    const/4 v1, 0x0

    move v0, v1

    :goto_a
    iget-object v4, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_e

    iget-object v4, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    if-eqz v4, :cond_9

    iget-object v5, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget v5, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_9

    goto :goto_b

    :cond_9
    iget-object v5, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-object v6, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    move-object/from16 p0, v2

    iget-wide v1, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v5, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v1, v5, v1

    move-object/from16 v2, p0

    if-gtz v1, :cond_c

    :goto_b
    iget-object v1, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_a

    if-eqz v4, :cond_a

    iget-object v1, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget v1, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    goto :goto_c

    :cond_a
    iget-object v1, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_b

    iget-object v0, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_b
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    goto :goto_a

    :cond_c
    :goto_c
    iget-object v1, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_e

    :cond_d
    :goto_d
    iget-object v0, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_e
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    move-result-object v0

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    :goto_f
    iput-object v0, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-lez v0, :cond_11

    iget-object v1, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    iget-object v3, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    iget-object v4, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_11

    :cond_10
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_11
    const/4 v1, 0x0

    :goto_11
    iput-object v1, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    goto :goto_12

    :cond_12
    move-object/from16 v28, v0

    move/from16 v25, v2

    move/from16 v27, v3

    goto/16 :goto_6

    :cond_13
    :goto_12
    add-int/lit8 v3, v27, 0x1

    move/from16 v2, v25

    move-object/from16 v1, v26

    move-object/from16 v0, v28

    move/from16 v5, v29

    move/from16 v4, v31

    move/from16 v6, v32

    goto/16 :goto_5

    :cond_14
    move/from16 v31, v4

    move/from16 v29, v5

    move/from16 v32, v6

    add-int/lit8 v2, v21, 0x1

    move/from16 v1, v22

    move-object/from16 v0, v23

    move-object/from16 v3, v24

    goto/16 :goto_4

    :cond_15
    move-object/from16 v24, v3

    move/from16 v31, v4

    move/from16 v29, v5

    move/from16 v32, v6

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v18

    move-object/from16 v0, v19

    move/from16 v2, v20

    goto/16 :goto_3

    :cond_16
    move-object/from16 v19, v0

    move/from16 v18, v1

    move/from16 v20, v2

    move-object/from16 v24, v3

    move/from16 v31, v4

    move/from16 v29, v5

    move/from16 v32, v6

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_17
    move-object/from16 v19, v0

    move/from16 v18, v1

    move/from16 v20, v2

    move-object/from16 v24, v3

    move/from16 v31, v4

    move/from16 v29, v5

    move/from16 v32, v6

    add-int/lit8 v6, v32, 0x1

    goto/16 :goto_1

    :cond_18
    move-object/from16 v19, v0

    move/from16 v18, v1

    move/from16 v20, v2

    add-int/lit8 v2, v20, 0x1

    goto/16 :goto_0

    :cond_19
    move-object/from16 v19, v0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sget-wide v1, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    move-wide/from16 v2, p2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v0, v19

    const/16 v16, 0x0

    const/16 v30, 0x0

    invoke-static/range {v0 .. v11}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move/from16 v2, v30

    :goto_13
    if-ge v2, v1, :cond_20

    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v4, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v5, v30

    :goto_14
    if-ge v5, v4, :cond_1f

    iget-object v6, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    iget-object v7, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v21, v7

    check-cast v21, Ljava/lang/String;

    iget-object v7, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move/from16 v8, v30

    :goto_15
    if-ge v8, v7, :cond_1e

    iget-object v9, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    iget-object v10, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v10, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    const-string/jumbo v12, "default:0"

    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1d

    iget-object v9, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    iget-object v10, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    move/from16 v12, v30

    :goto_16
    if-ge v12, v10, :cond_1d

    iget-object v13, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v22, v13

    check-cast v22, Ljava/lang/String;

    iget-object v13, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v15, v30

    :goto_17
    if-ge v15, v14, :cond_1c

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    move/from16 p0, v1

    iget v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move-object/from16 p7, v0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isComplete()Z

    move-result v17

    if-eqz v17, :cond_1b

    move-object/from16 p2, v1

    move/from16 p6, v19

    move/from16 p4, v20

    move-object/from16 p3, v21

    move-object/from16 p5, v22

    invoke-virtual/range {p2 .. p7}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)Z

    move-result v1

    move v0, v1

    move-object/from16 v1, p2

    move/from16 p2, v0

    move-object/from16 v0, p7

    if-eqz p2, :cond_1a

    iget-object v1, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    if-eqz v1, :cond_1a

    move/from16 v32, v2

    new-instance v2, Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-object/from16 p2, v3

    iget-object v3, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    move/from16 p3, v4

    iget-object v4, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mUid:I

    invoke-direct {v2, v1, v3, v4}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v29, v2

    goto :goto_1a

    :cond_1a
    :goto_18
    move/from16 v32, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    goto :goto_19

    :cond_1b
    move-object/from16 v0, p7

    goto :goto_18

    :goto_19
    move-object/from16 v29, v16

    :goto_1a
    sget-wide v1, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    iget-wide v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    div-long/2addr v3, v1

    mul-long v25, v3, v1

    iget-wide v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    invoke-static {v1, v2}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeDuration(J)J

    move-result-wide v27

    iget v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    iget v0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    move-object/from16 v18, p1

    move/from16 v24, v0

    move/from16 v23, v1

    invoke-virtual/range {v18 .. v29}, Landroid/app/AppOpsManager$HistoricalOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v0, v31

    move/from16 v2, v32

    goto/16 :goto_17

    :cond_1c
    move-object/from16 v31, v0

    move/from16 p0, v1

    move/from16 v32, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_16

    :cond_1d
    move-object/from16 v31, v0

    move/from16 p0, v1

    move/from16 v32, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v0, v31

    move/from16 v2, v32

    goto/16 :goto_15

    :cond_1e
    move-object/from16 v31, v0

    move/from16 p0, v1

    move/from16 v32, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_14

    :cond_1f
    move-object/from16 v31, v0

    move/from16 p0, v1

    move/from16 v32, v2

    add-int/lit8 v2, v32, 0x1

    goto/16 :goto_13

    :cond_20
    return-void
.end method

.method public final clearHistory()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DiscreteOpsXmlRegistry"

    const-string v2, "Failed to create DiscreteRegistry directory"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1f9

    const/4 v2, -0x1

    invoke-static {p0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final deleteOldDiscreteHistoryFilesLocked()V
    .locals 12

    const-string v0, "DiscreteOpsXmlRegistry"

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-lez v1, :cond_2

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v8

    sget-wide v9, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sget-object v11, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-lez v6, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting file "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    const-string v5, "Error while cleaning timeline files: "

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    .locals 5

    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-virtual {v0, v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-direct {v3, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-virtual {p0, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-virtual {v0, p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V
    .locals 5

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "tl"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1, p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mwriteToStream(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/io/FileOutputStream;)V

    invoke-virtual {v2, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error writing timeline state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DiscreteOpsXmlRegistry"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-virtual {v2, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_0
    return-void
.end method

.method public final readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    array-length v3, p0

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_3

    const/16 v5, 0x2a0

    if-ge v4, v5, :cond_3

    aget-object v5, p0, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->extractTimestamp(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-gez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x8600000

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    const-string v10, "DiscreteOpsXmlRegistry"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Skipping large discrete file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " size="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes > "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    invoke-static {p1, v5, v1, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mreadFromFile(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/io/File;J)V

    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final readLargestChainIdFromDiskLocked()I
    .locals 11

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    if-lez v1, :cond_4

    array-length v1, p0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v0

    move-object v6, v2

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v3, v8

    if-gez v10, :cond_1

    move-object v6, v7

    move-wide v3, v8

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    return v0

    :cond_3
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    const-string/jumbo v3, "h"

    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v3, "lc"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0

    :catchall_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_4
    return v0
.end method

.method public final recordDiscreteAccess(IIIIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p2 .. p3}, Lcom/android/server/appop/DiscreteOpsRegistry;->isDiscreteOp(II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    const-string/jumbo v14, "default:0"

    move/from16 v4, p1

    move/from16 v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-object/from16 v13, p11

    move-object/from16 v15, p13

    invoke-virtual/range {v2 .. v15}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->addDiscreteAccess(IIIIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final writeAndClearOldAccessHistory()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    if-nez v1, :cond_0

    const-string p0, "DiscreteOpsXmlRegistry"

    const-string/jumbo v1, "State not saved - persistence not initialized."

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    iget v4, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mChainIdOffset:I

    invoke-direct {v3, v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->deleteOldDiscreteHistoryFilesLocked()V

    iget-object v1, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
