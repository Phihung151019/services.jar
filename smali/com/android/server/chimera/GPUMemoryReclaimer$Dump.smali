.class public final Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public self:Lcom/android/server/chimera/GPUMemoryReclaimer;


# virtual methods
.method public final meminfo(Ljava/io/PrintWriter;)V
    .locals 21

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    iget-object v0, v2, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    if-nez v0, :cond_0

    const-string/jumbo v0, "VendorPlugin is not initialized"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->getReclaimableTasks()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const-string/jumbo v0, "MemInfo"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v5, "name"

    const-string/jumbo v6, "resident"

    const-string/jumbo v7, "pid"

    const-string/jumbo v8, "reclaimed"

    const-string/jumbo v9, "raw"

    filled-new-array {v7, v5, v6, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-wide/16 v7, 0x0

    move-wide v9, v7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v0, 0x1

    check-cast v11, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;

    iget v13, v11, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    :try_start_0
    iget-object v0, v2, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "/proc/"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/comm"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    :try_start_2
    const-string v0, "(unknown)"

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v20, v5

    move-wide v15, v7

    move-object v8, v2

    goto :goto_4

    :cond_1
    :goto_2
    iget-object v14, v11, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide v15, v7

    :try_start_3
    iget-wide v6, v11, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mResident:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v8, v2

    move-object/from16 v17, v3

    :try_start_4
    iget-wide v2, v11, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    new-instance v11, Ljava/util/ArrayList;

    move-wide/from16 v18, v2

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v20, v5

    :try_start_5
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v14}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v2, v0, v3, v5, v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    add-long v2, v15, v6

    add-long v9, v9, v18

    move-wide v15, v2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_3
    move/from16 v20, v5

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v8, v2

    move-object/from16 v17, v3

    goto :goto_3

    :goto_4
    const-string/jumbo v2, "pid="

    const-string v3, " : cannot find GPU memory info: "

    invoke-static {v13, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    move-object v2, v8

    move v0, v12

    move-wide v7, v15

    move-object/from16 v3, v17

    move/from16 v5, v20

    goto/16 :goto_0

    :cond_2
    move-wide v15, v7

    new-instance v0, Ljava/util/ArrayList;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "TOTAL"

    const-string v6, "-"

    const-string v7, ""

    filled-new-array {v5, v6, v2, v3, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v2

    :cond_3
    if-ge v5, v3, :cond_5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/util/ArrayList;

    move v7, v2

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    aget v9, v0, v7

    if-le v9, v8, :cond_4

    move v8, v9

    :cond_4
    aput v8, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v2

    :goto_7
    if-ge v5, v3, :cond_8

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v8, v2

    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aget v10, v0, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x2

    :goto_9
    if-lez v10, :cond_6

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, -0x1

    goto :goto_9

    :cond_6
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_7
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_7

    :cond_8
    return-void
.end method
