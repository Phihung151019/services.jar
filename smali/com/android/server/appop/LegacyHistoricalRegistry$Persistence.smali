.class public final Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;


# instance fields
.field public final mBaseSnapshotInterval:J

.field public final mIntervalCompressionMultiplier:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/internal/os/AtomicDirectory;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "appops"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "history"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicDirectory;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    iput-wide p3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    return-void
.end method

.method public static clearHistoryDLocked$1()V
    .locals 1

    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    return-void
.end method

.method public static getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getLastPersistTimeMillisDLocked()J
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_5

    array-length v6, v5

    if-lez v6, :cond_5

    array-length v3, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_3

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_2

    :cond_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    :goto_1
    move-object v2, v7

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_3

    :cond_3
    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v0

    :catchall_1
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    :goto_3
    const-string v3, "Error reading historical app ops. Deleting history."

    invoke-static {v3, v2, v4}, Lcom/android/server/appop/LegacyHistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    sget-object v2, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    :goto_4
    return-wide v0
.end method

.method public static readeHistoricalOpsDLocked(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 30

    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    move-wide/from16 v3, p8

    const/4 v5, 0x0

    const-string/jumbo v6, "beg"

    const-wide/16 v7, 0x0

    invoke-interface {v0, v5, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v6, 0x0

    if-eqz p11, :cond_0

    aget-wide v11, p11, v6

    goto :goto_0

    :cond_0
    move-wide v11, v7

    :goto_0
    add-long/2addr v9, v11

    const-string/jumbo v11, "end"

    invoke-interface {v0, v5, v11, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz p11, :cond_1

    aget-wide v13, p11, v6

    goto :goto_1

    :cond_1
    move-wide v13, v7

    :goto_1
    add-long/2addr v11, v13

    cmp-long v6, v3, v9

    if-gez v6, :cond_2

    return-object v5

    :cond_2
    cmp-long v6, v1, v11

    if-lez v6, :cond_3

    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v7, v8, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    return-object v0

    :cond_3
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    sub-long v13, v3, v1

    long-to-double v13, v13

    sub-long/2addr v11, v9

    long-to-double v9, v11

    div-double/2addr v13, v9

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    move-object v9, v5

    :goto_2
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v10

    if-eqz v10, :cond_24

    const-string/jumbo v10, "uid"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    const-string/jumbo v10, "na"

    invoke-interface {v0, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    and-int/lit8 v12, p5, 0x1

    if-eqz v12, :cond_4

    move/from16 v12, p1

    if-eq v12, v11, :cond_5

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v11, v5

    move-object/from16 v24, v11

    :goto_3
    move/from16 p7, v6

    goto/16 :goto_15

    :cond_4
    move/from16 v12, p1

    :cond_5
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v15

    move-object/from16 v24, v9

    :goto_4
    invoke-static {v0, v15}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v16

    if-eqz v16, :cond_21

    const-string/jumbo v7, "pkg"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    and-int/lit8 v8, p5, 0x2

    if-eqz v8, :cond_6

    move-object/from16 v8, p2

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v25, v5

    move/from16 v17, v11

    move-object/from16 v11, v25

    :goto_5
    move/from16 p7, v6

    move-object/from16 p11, v10

    move/from16 v28, v15

    const-wide/16 v7, 0x0

    goto/16 :goto_14

    :cond_6
    move-object/from16 v8, p2

    :cond_7
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    move-object/from16 v25, v24

    :goto_6
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v16

    if-eqz v16, :cond_1e

    move/from16 p6, v5

    const-string/jumbo v5, "ftr"

    move/from16 p7, v6

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    and-int/lit8 v6, p5, 0x4

    if-eqz v6, :cond_a

    move-object/from16 v6, p3

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/16 v26, 0x0

    :cond_8
    move-object/from16 v18, v7

    move-object/from16 p11, v10

    move/from16 v17, v11

    move/from16 v28, v15

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    goto/16 :goto_13

    :cond_9
    :goto_7
    move-object/from16 v19, v5

    goto :goto_8

    :cond_a
    move-object/from16 v6, p3

    goto :goto_7

    :goto_8
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    move-object/from16 v26, v25

    :goto_9
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v16

    if-eqz v16, :cond_8

    move/from16 p8, v5

    const-string/jumbo v5, "op"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x0

    invoke-interface {v0, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    and-int/lit8 v5, p5, 0x8

    if-eqz v5, :cond_b

    invoke-static/range {v16 .. v16}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p4

    invoke-static {v6, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v5, 0x0

    :goto_a
    move-object/from16 v18, v7

    move-object/from16 p11, v10

    move/from16 v17, v11

    move/from16 v28, v15

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    goto/16 :goto_12

    :cond_b
    move-object/from16 v6, p4

    :cond_c
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    move-object/from16 v27, v26

    :goto_b
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v17

    if-eqz v17, :cond_19

    move/from16 p9, v5

    const-string/jumbo v5, "st"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v5, 0x0

    invoke-interface {v0, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v6

    and-int v21, v6, p10

    if-nez v21, :cond_d

    move-object/from16 v18, v7

    move-object/from16 p11, v10

    move/from16 v17, v11

    move/from16 v28, v15

    const-wide/16 v7, 0x0

    move-object v11, v5

    goto/16 :goto_11

    :cond_d
    invoke-static/range {v17 .. v18}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v20

    const-string/jumbo v6, "ac"

    move-object/from16 v18, v7

    move-object/from16 p11, v10

    move/from16 v17, v11

    const-wide/16 v7, 0x0

    invoke-interface {v0, v5, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v5, v10, v7

    if-lez v5, :cond_10

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_e

    long-to-double v5, v10

    mul-double/2addr v5, v13

    invoke-static {v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v5

    double-to-long v10, v5

    :cond_e
    move-wide/from16 v22, v10

    if-nez v27, :cond_f

    new-instance v5, Landroid/app/AppOpsManager$HistoricalOps;

    const-wide/16 v7, 0x0

    invoke-direct {v5, v7, v8, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move/from16 v29, v15

    move-object v15, v5

    move/from16 v5, v29

    goto :goto_c

    :cond_f
    const-wide/16 v7, 0x0

    move v5, v15

    move-object/from16 v15, v27

    :goto_c
    invoke-virtual/range {v15 .. v23}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    move-object v6, v15

    goto :goto_d

    :cond_10
    move v5, v15

    const-wide/16 v7, 0x0

    move-object/from16 v6, v27

    :goto_d
    const-string/jumbo v10, "rc"

    move/from16 v28, v5

    move-object v15, v6

    const/4 v11, 0x0

    invoke-interface {v0, v11, v10, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-lez v10, :cond_13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_11

    long-to-double v5, v5

    mul-double/2addr v5, v13

    invoke-static {v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v5

    double-to-long v5, v5

    :cond_11
    move-wide/from16 v22, v5

    if-nez v15, :cond_12

    new-instance v6, Landroid/app/AppOpsManager$HistoricalOps;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v7, v8, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object v15, v6

    goto :goto_e

    :cond_12
    const-wide/16 v7, 0x0

    :goto_e
    invoke-virtual/range {v15 .. v23}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    move-object v6, v15

    move-object v5, v6

    goto :goto_f

    :cond_13
    const-wide/16 v7, 0x0

    move-object v5, v15

    :goto_f
    const-string/jumbo v6, "du"

    move-object v10, v5

    const/4 v11, 0x0

    invoke-interface {v0, v11, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v15, v5, v7

    if-lez v15, :cond_16

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_14

    long-to-double v5, v5

    mul-double/2addr v5, v13

    invoke-static {v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v5

    double-to-long v5, v5

    :cond_14
    move-wide/from16 v22, v5

    if-nez v10, :cond_15

    new-instance v5, Landroid/app/AppOpsManager$HistoricalOps;

    const-wide/16 v7, 0x0

    invoke-direct {v5, v7, v8, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object v15, v5

    goto :goto_10

    :cond_15
    const-wide/16 v7, 0x0

    move-object v15, v10

    :goto_10
    invoke-virtual/range {v15 .. v23}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    move-object v5, v15

    goto :goto_11

    :cond_16
    const-wide/16 v7, 0x0

    move-object v5, v10

    :goto_11
    if-nez v27, :cond_17

    move-object/from16 v27, v5

    :cond_17
    move-object/from16 v8, p2

    move-object/from16 v6, p4

    move/from16 v5, p9

    move-object/from16 v10, p11

    move/from16 v11, v17

    move-object/from16 v7, v18

    move/from16 v15, v28

    goto/16 :goto_b

    :cond_18
    move-object/from16 v8, p2

    move-object/from16 v6, p4

    move/from16 v5, p9

    goto/16 :goto_b

    :cond_19
    move-object/from16 v5, v27

    goto/16 :goto_a

    :goto_12
    if-nez v26, :cond_1a

    move-object/from16 v26, v5

    :cond_1a
    move-object/from16 v8, p2

    move-object/from16 v6, p3

    move/from16 v5, p8

    move-object/from16 v10, p11

    move/from16 v11, v17

    move-object/from16 v7, v18

    move/from16 v15, v28

    goto/16 :goto_9

    :cond_1b
    move-object/from16 v8, p2

    move-object/from16 v6, p3

    move/from16 v5, p8

    goto/16 :goto_9

    :goto_13
    if-nez v25, :cond_1c

    move-object/from16 v25, v26

    :cond_1c
    move-object/from16 v8, p2

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v10, p11

    move/from16 v11, v17

    move-object/from16 v7, v18

    move/from16 v15, v28

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v8, p2

    move/from16 v5, p6

    move/from16 v6, p7

    goto/16 :goto_6

    :cond_1e
    move/from16 v17, v11

    const/4 v11, 0x0

    goto/16 :goto_5

    :goto_14
    if-nez v24, :cond_1f

    move-object/from16 v24, v25

    :cond_1f
    move/from16 v6, p7

    move-object/from16 v10, p11

    move-object v5, v11

    move/from16 v11, v17

    move/from16 v15, v28

    goto/16 :goto_4

    :cond_20
    const-wide/16 v7, 0x0

    goto/16 :goto_4

    :cond_21
    move-object v11, v5

    goto/16 :goto_3

    :goto_15
    if-nez v9, :cond_22

    move-object/from16 v9, v24

    :cond_22
    move/from16 v6, p7

    move-object v5, v11

    goto/16 :goto_2

    :cond_23
    move/from16 v12, p1

    goto/16 :goto_2

    :cond_24
    if-eqz v9, :cond_25

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    :cond_25
    return-object v9
.end method

.method public static writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 35

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-string/jumbo v2, "ops"

    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p0 .. p0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v3

    const-string/jumbo v5, "beg"

    invoke-interface {v0, v1, v5, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "end"

    invoke-virtual/range {p0 .. p0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p0 .. p0}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_a

    move-object/from16 v6, p0

    invoke-virtual {v6, v5}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v7

    const-string/jumbo v8, "uid"

    invoke-interface {v0, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v9

    const-string/jumbo v10, "na"

    invoke-interface {v0, v1, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_9

    invoke-virtual {v7, v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v12

    const-string/jumbo v13, "pkg"

    invoke-interface {v0, v1, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v1, v10, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v14

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_8

    invoke-virtual {v12, v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v4

    move/from16 v16, v3

    const-string/jumbo v3, "ftr"

    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v10, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v1

    move/from16 v17, v5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_7

    move/from16 v18, v1

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v1

    move-object/from16 v19, v4

    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOp;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v20

    if-gtz v20, :cond_1

    :cond_0
    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move/from16 v20, v5

    move-object/from16 v21, v7

    move-object/from16 v28, v8

    move/from16 v22, v11

    move-object/from16 v23, v12

    move/from16 v26, v14

    move/from16 v27, v15

    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_1
    move/from16 v20, v5

    const-string/jumbo v5, "op"

    const/4 v6, 0x0

    invoke-interface {v0, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v21, v7

    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v7

    invoke-interface {v0, v6, v10, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_6

    move/from16 v22, v11

    move-object/from16 v23, v12

    invoke-virtual {v4, v7}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v11

    move-object/from16 v24, v4

    invoke-static {v11, v12}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v4

    move/from16 v25, v6

    invoke-static {v11, v12}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v6

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-virtual {v1, v4, v4, v6}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessCount(III)J

    move-result-wide v14

    move/from16 v29, v7

    move-object/from16 v28, v8

    invoke-virtual {v1, v4, v4, v6}, Landroid/app/AppOpsManager$HistoricalOp;->getRejectCount(III)J

    move-result-wide v7

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    invoke-virtual {v1, v4, v4, v6}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessDuration(III)J

    move-result-wide v2

    const-wide/16 v32, 0x0

    cmp-long v4, v14, v32

    if-gtz v4, :cond_2

    cmp-long v6, v7, v32

    if-gtz v6, :cond_2

    cmp-long v6, v2, v32

    if-gtz v6, :cond_2

    move-object/from16 v34, v1

    const/4 v1, 0x0

    goto :goto_5

    :cond_2
    const-string/jumbo v6, "st"

    move-object/from16 v34, v1

    const/4 v1, 0x0

    invoke-interface {v0, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1, v10, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v4, :cond_3

    const-string/jumbo v4, "ac"

    invoke-interface {v0, v1, v4, v14, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    cmp-long v4, v7, v32

    if-lez v4, :cond_4

    const-string/jumbo v4, "rc"

    invoke-interface {v0, v1, v4, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    cmp-long v4, v2, v32

    if-lez v4, :cond_5

    const-string/jumbo v4, "du"

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    invoke-interface {v0, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_5
    add-int/lit8 v7, v29, 0x1

    move/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v4, v24

    move/from16 v6, v25

    move/from16 v14, v26

    move/from16 v15, v27

    move-object/from16 v8, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v1, v34

    goto/16 :goto_4

    :cond_6
    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v28, v8

    move/from16 v22, v11

    move-object/from16 v23, v12

    move/from16 v26, v14

    move/from16 v27, v15

    const/4 v1, 0x0

    invoke-interface {v0, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_6
    add-int/lit8 v5, v20, 0x1

    move-object/from16 v6, p0

    move/from16 v1, v18

    move-object/from16 v4, v19

    move-object/from16 v7, v21

    move/from16 v11, v22

    move-object/from16 v12, v23

    move/from16 v14, v26

    move/from16 v15, v27

    move-object/from16 v8, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    goto/16 :goto_3

    :cond_7
    move-object/from16 v30, v2

    move-object v2, v3

    move-object/from16 v21, v7

    move-object/from16 v28, v8

    move/from16 v22, v11

    move-object/from16 v23, v12

    move/from16 v26, v14

    move/from16 v27, v15

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v15, v27, 0x1

    move-object/from16 v6, p0

    move/from16 v3, v16

    move/from16 v5, v17

    move-object/from16 v7, v21

    move/from16 v11, v22

    move-object/from16 v12, v23

    move/from16 v14, v26

    move-object/from16 v8, v28

    move-object/from16 v2, v30

    goto/16 :goto_2

    :cond_8
    move-object/from16 v30, v2

    move/from16 v16, v3

    move/from16 v17, v5

    move-object/from16 v21, v7

    move-object/from16 v28, v8

    move/from16 v22, v11

    invoke-interface {v0, v1, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v11, v22, 0x1

    move-object/from16 v6, p0

    move/from16 v3, v16

    move/from16 v5, v17

    move-object/from16 v7, v21

    move-object/from16 v8, v28

    move-object/from16 v2, v30

    goto/16 :goto_1

    :cond_9
    move-object/from16 v30, v2

    move/from16 v16, v3

    move/from16 v17, v5

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v17, 0x1

    move/from16 v3, v16

    move-object/from16 v2, v30

    goto/16 :goto_0

    :cond_a
    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public final collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;
    .locals 17

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v3}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v16

    const/4 v2, 0x1

    new-array v14, v2, [J

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    aput-wide v4, v14, v2

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move/from16 v13, p10

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v1

    :goto_0
    const-string v2, "Error reading historical app ops. Deleting history."

    invoke-static {v2, v0, v3}, Lcom/android/server/appop/LegacyHistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    return-object v1
.end method

.method public final collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/LinkedList;
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p13

    iget-wide v2, v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v2, v2

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    iget-wide v6, v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v4, v6

    add-int/lit8 v8, v0, 0x1

    int-to-double v9, v8

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    mul-long/2addr v2, v6

    sub-long v6, p7, v4

    const-wide/16 v9, 0x0

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    sub-long v9, p9, v4

    move-wide v14, v4

    move-wide v5, v2

    move-wide v3, v14

    move-object/from16 v2, p1

    move/from16 v7, p2

    move/from16 v11, p6

    move/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v19, p14

    move/from16 v18, v0

    move v0, v8

    move-wide v14, v9

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v19}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v3

    move-wide v7, v12

    move-wide v9, v14

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v14, p14

    move v13, v0

    move-object v15, v3

    move-wide/from16 v20, v5

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    move-wide/from16 v5, v20

    invoke-virtual {v3, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v15, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final generateFile(Ljava/io/File;I)Ljava/io/File;
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p2, 0x1

    if-ge v2, v3, :cond_0

    long-to-double v0, v0

    iget-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v3, v3

    int-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v3, v0

    double-to-long v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v0, v2

    new-instance p0, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public final handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p5

    iget-wide v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v4, v4

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    iget-wide v8, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v6, v8

    add-int/lit8 v10, v3, 0x1

    int-to-double v11, v10

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    mul-long/2addr v4, v8

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    move-object/from16 v4, p4

    move v5, v10

    goto/16 :goto_d

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/16 v21, 0x0

    move/from16 v9, v21

    :goto_0
    if-ge v9, v8, :cond_2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$HistoricalOps;

    neg-long v12, v6

    invoke-virtual {v11, v12, v13}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const-wide v15, 0x7fffffffffffffffL

    const/16 v17, 0x1f

    const/4 v8, -0x1

    const/4 v9, 0x0

    move v11, v10

    const/4 v10, 0x0

    move v12, v11

    const/4 v11, 0x0

    move v13, v12

    const/4 v12, 0x0

    move/from16 v18, v13

    const-wide/high16 v13, -0x8000000000000000L

    move/from16 v19, v18

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v22, v2

    move-object v2, v0

    move-object/from16 v0, v22

    move-wide/from16 v26, v6

    move-wide v6, v4

    move-wide/from16 v4, v26

    move/from16 v22, v19

    move/from16 v19, v3

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v20}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v8

    move/from16 v3, v19

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v11

    move/from16 v13, v21

    :goto_1
    if-ge v13, v10, :cond_3

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v14, v11, v12}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    if-eqz v8, :cond_4

    invoke-virtual {v10, v8}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v0

    move/from16 v13, v21

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v23, 0x0

    :goto_2
    if-ge v13, v0, :cond_c

    invoke-virtual {v10, v13}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v6

    if-gtz v16, :cond_5

    move/from16 v18, v9

    move-object/from16 v19, v10

    :goto_3
    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v6

    if-gez v16, :cond_7

    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v16

    move/from16 v18, v9

    move-object/from16 v19, v10

    sub-long v9, v16, v6

    cmp-long v16, v9, v4

    if-lez v16, :cond_6

    long-to-double v9, v9

    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v11

    long-to-double v11, v11

    div-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v9

    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v10

    sub-long v23, v10, v6

    goto :goto_4

    :cond_6
    move-wide/from16 v23, v9

    goto :goto_3

    :cond_7
    move/from16 v18, v9

    move-object/from16 v19, v10

    move-object v9, v8

    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_9

    if-nez v14, :cond_8

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v9, :cond_b

    if-nez v15, :cond_a

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_a
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v18

    move-object/from16 v10, v19

    goto :goto_2

    :cond_c
    move/from16 v18, v9

    invoke-virtual {v2, v1, v3}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, p4

    invoke-interface {v6, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz v14, :cond_15

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_5
    if-ltz v3, :cond_12

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-int/lit8 v12, v3, -0x1

    :goto_6
    if-ltz v12, :cond_11

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v16

    move-wide/from16 v19, v10

    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    sub-long v10, v16, v10

    cmp-long v25, v10, v19

    if-gtz v25, :cond_d

    goto :goto_8

    :cond_d
    long-to-float v10, v10

    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v10, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v10, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_e

    invoke-interface {v14, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v7, v13}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    goto :goto_7

    :cond_e
    float-to-double v1, v10

    invoke-virtual {v13, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v7, v1}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    :cond_f
    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v14, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_10
    :goto_7
    add-int/lit8 v12, v12, -0x1

    const-wide/16 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    goto :goto_6

    :cond_11
    :goto_8
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    goto :goto_5

    :cond_12
    const-string/jumbo v1, "history"

    sget-object v2, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/AtomicDirectory;->openWrite(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    const-string/jumbo v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    move/from16 v4, v18

    invoke-interface {v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-interface {v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v0, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "ver"

    const/4 v5, 0x2

    invoke-interface {v0, v4, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    move-wide/from16 v11, v23

    const-wide/16 v16, 0x0

    cmp-long v3, v11, v16

    if-eqz v3, :cond_13

    const-string/jumbo v3, "ov"

    invoke-interface {v0, v4, v3, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_b

    :cond_13
    :goto_9
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v4, v21

    :goto_a
    if-ge v4, v3, :cond_14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-static {v5, v0}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/modules/utils/TypedXmlSerializer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_14
    const/4 v4, 0x0

    invoke-interface {v0, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/AtomicDirectory;->closeWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v6

    move-object v3, v15

    move/from16 v5, v22

    goto :goto_c

    :goto_b
    sget-object v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/AtomicDirectory;->failWrite(Ljava/io/FileOutputStream;)V

    throw v0

    :goto_c
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    return-void

    :goto_d
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_17

    move-object/from16 v6, p2

    invoke-virtual {v2, v6, v3}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual {v2, v1, v3}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/nio/file/Files;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    :cond_16
    move-object v3, v0

    move-object v0, v2

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    :cond_17
    return-void
.end method

.method public final persistHistoricalOpsDLocked(Ljava/util/List;)V
    .locals 7

    :try_start_0
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startWrite()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->getBackupDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    const-string p1, "Failed to write historical app ops, restoring backup"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    sget-object p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p0}, Lcom/android/internal/os/AtomicDirectory;->failWrite()V

    return-void
.end method

.method public final readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p17

    move-object/from16 v3, p18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v1

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    cmp-long v2, p11, p13

    if-gez v2, :cond_e

    cmp-long v2, p13, p2

    if-gez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    sub-long v4, p4, p2

    iget-wide v6, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    div-long/2addr v4, v6

    add-long v4, v4, p4

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    if-eqz p16, :cond_2

    aget-wide v8, p16, v0

    goto :goto_0

    :cond_2
    move-wide v8, v6

    :goto_0
    add-long/2addr v4, v8

    cmp-long v2, p11, v4

    const/4 v4, 0x0

    if-gez v2, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v2, "Dropping unsupported history version 1 for file:"

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v8

    const-string/jumbo v5, "history"

    invoke-static {v8, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v5, "ver"

    invoke-interface {v8, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v9, 0x2

    if-lt v5, v9, :cond_a

    const-string/jumbo v2, "ov"

    invoke-interface {v8, v4, v2, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    :cond_4
    :goto_1
    invoke-static {v8, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "ops"

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move/from16 v18, p15

    move-object/from16 v19, p16

    invoke-static/range {v8 .. v19}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readeHistoricalOpsDLocked(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :cond_6
    if-nez v4, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    if-eqz p16, :cond_9

    aget-wide v7, p16, v0

    add-long/2addr v7, v5

    aput-wide v7, p16, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    :cond_a
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No history file: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LegacyHistoricalRegistry$Persistence"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_b
    :goto_4
    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    return-object v4

    :cond_d
    :goto_5
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_e
    :goto_6
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public final readHistoryDLocked()Ljava/util/List;
    .locals 11

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/16 v10, 0x1f

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
