.class public final Lcom/android/server/display/DeviceStateToLayoutMap;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mIdProducer:Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

.field public final mIsPortInDisplayLayoutEnabled:Z

.field public final mLayoutMap:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system/displayconfig/display_layout_configuration.xml"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "etc/displayconfig/display_layout_configuration.xml"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    iget-object p2, p2, Lcom/android/server/display/feature/DisplayManagerFlags;->mPortInDisplayLayoutFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIsPortInDisplayLayoutEnabled:Z

    iput-object p1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIdProducer:Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;->loadLayoutsFromConfig(Ljava/io/File;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->createLayout(I)Lcom/android/server/display/layout/Layout;

    return-void
.end method


# virtual methods
.method public final createLayout(I)Lcom/android/server/display/layout/Layout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Attempted to create a second layout for state "

    const-string v0, "DeviceStateToLayoutMap"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/display/layout/Layout;

    invoke-direct {v0}, Lcom/android/server/display/layout/Layout;-><init>()V

    iget-object p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final get(I)Lcom/android/server/display/layout/Layout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/layout/Layout;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/layout/Layout;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final getDisplayAddressForLayoutDisplay(Lcom/android/server/display/config/layout/Display;)Landroid/view/DisplayAddress;
    .locals 2

    iget-object v0, p1, Lcom/android/server/display/config/layout/Display;->address_optional:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIsPortInDisplayLayoutEnabled:Z

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/display/config/layout/Display;->port_optional:Ljava/math/BigInteger;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    long-to-int p0, p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/view/DisplayAddress;->fromPortAndModel(ILjava/lang/Long;)Landroid/view/DisplayAddress$Physical;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Must specify a display identifier in display layout configuration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public loadLayoutsFromConfig(Ljava/io/File;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Display layout config not found: "

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_b

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Loading display layouts from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeviceStateToLayoutMap"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v3}, Lcom/android/server/display/config/layout/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/layout/Layouts;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_8

    :cond_2
    :try_start_3
    iget-object v2, v5, Lcom/android/server/display/config/layout/Layouts;->layout:Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v5, Lcom/android/server/display/config/layout/Layouts;->layout:Ljava/util/List;

    :cond_3
    iget-object v2, v5, Lcom/android/server/display/config/layout/Layouts;->layout:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/display/config/layout/Layout;

    iget-object v9, v8, Lcom/android/server/display/config/layout/Layout;->state:Ljava/math/BigInteger;

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/server/display/DeviceStateToLayoutMap;->createLayout(I)Lcom/android/server/display/layout/Layout;

    move-result-object v10

    iget-object v9, v8, Lcom/android/server/display/config/layout/Layout;->display:Ljava/util/List;

    if-nez v9, :cond_4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lcom/android/server/display/config/layout/Layout;->display:Ljava/util/List;

    :cond_4
    iget-object v8, v8, Lcom/android/server/display/config/layout/Layout;->display:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_a

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v22, v11, 0x1

    check-cast v12, Lcom/android/server/display/config/layout/Display;

    invoke-virtual {v0, v12}, Lcom/android/server/display/DeviceStateToLayoutMap;->getDisplayAddressForLayoutDisplay(Lcom/android/server/display/config/layout/Display;)Landroid/view/DisplayAddress;

    move-result-object v11

    iget-object v13, v12, Lcom/android/server/display/config/layout/Display;->position:Ljava/lang/String;

    const-string/jumbo v14, "front"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/16 v16, 0x0

    goto :goto_3

    :cond_5
    const-string/jumbo v14, "rear"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    :goto_2
    move/from16 v16, v13

    goto :goto_3

    :cond_6
    const/4 v13, -0x1

    goto :goto_2

    :goto_3
    iget-object v13, v12, Lcom/android/server/display/config/layout/Display;->leadDisplayAddress:Ljava/math/BigInteger;

    if-nez v13, :cond_7

    const/4 v13, 0x0

    :goto_4
    move-object/from16 v17, v13

    goto :goto_5

    :cond_7
    invoke-virtual {v13}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v13

    goto :goto_4

    :goto_5
    iget-object v13, v12, Lcom/android/server/display/config/layout/Display;->defaultDisplay:Ljava/lang/Boolean;

    if-nez v13, :cond_8

    const/4 v13, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    :goto_6
    iget-object v14, v12, Lcom/android/server/display/config/layout/Display;->enabled:Ljava/lang/Boolean;

    if-nez v14, :cond_9

    const/4 v14, 0x0

    goto :goto_7

    :cond_9
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    :goto_7
    iget-object v15, v12, Lcom/android/server/display/config/layout/Display;->displayGroup:Ljava/lang/String;

    move/from16 v18, v13

    move v13, v14

    move-object v14, v15

    iget-object v15, v0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIdProducer:Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    iget-object v6, v12, Lcom/android/server/display/config/layout/Display;->brightnessThrottlingMapId:Ljava/lang/String;

    iget-object v0, v12, Lcom/android/server/display/config/layout/Display;->refreshRateZoneId:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v12, Lcom/android/server/display/config/layout/Display;->refreshRateThermalThrottlingMapId:Ljava/lang/String;

    iget-object v12, v12, Lcom/android/server/display/config/layout/Display;->powerThrottlingMapId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    move/from16 v12, v18

    move-object/from16 v18, v6

    invoke-virtual/range {v10 .. v21}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZLjava/lang/String;Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v11, v22

    goto :goto_1

    :cond_a
    invoke-virtual {v10}, Lcom/android/server/display/layout/Layout;->postProcessLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :goto_8
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encountered an error while reading/parsing display layout config file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    return-void
.end method
