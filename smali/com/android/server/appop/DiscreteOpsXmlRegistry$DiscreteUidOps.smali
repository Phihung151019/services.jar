.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mPackages:Landroid/util/ArrayMap;


# virtual methods
.method public final deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V
    .locals 23

    move-object/from16 v0, p1

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "p"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    const-string/jumbo v3, "pn"

    invoke-interface {v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    :cond_1
    :goto_1
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "o"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "op"

    invoke-interface {v0, v2, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    move-result-object v6

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    :cond_2
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    const-string/jumbo v8, "a"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "at"

    invoke-interface {v0, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v10

    :cond_3
    :goto_2
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v11, "e"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string/jumbo v11, "nt"

    invoke-interface {v0, v2, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v15

    const-string/jumbo v11, "nd"

    const-wide/16 v12, -0x1

    invoke-interface {v0, v2, v11, v12, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v17

    const-string/jumbo v11, "us"

    invoke-interface {v0, v2, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v11, "f"

    invoke-interface {v0, v2, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v11, "af"

    invoke-interface {v0, v2, v11, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v11, "ci"

    const/4 v12, -0x1

    invoke-interface {v0, v2, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    const-string/jumbo v11, "di"

    invoke-interface {v0, v2, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "default:0"

    :cond_4
    add-long v21, v15, v17

    cmp-long v12, v21, p2

    if-gez v12, :cond_5

    goto :goto_2

    :cond_5
    iget-object v12, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda0;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v12, v11, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    invoke-virtual {v2, v8}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-direct/range {v12 .. v20}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;-><init>(IIJJII)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    iget-object v2, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v2, :cond_8

    iget-object v8, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    iget-object v9, v8, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_7

    iget-object v11, v8, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    new-instance v12, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-static {v12}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v4, p0

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
