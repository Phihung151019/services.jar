.class public final Lcom/android/server/display/DisplayTopologyXmlStore;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mImmutableTopologies:Ljava/util/List;

.field public final mInjector:Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;

.field public final mTopologies:Ljava/util/Map;

.field public mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DisplayManager.DisplayTopologyXmlStore"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;

    const-string p1, "DisplayManager.DisplayTopologyXmlStore"

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    invoke-static {}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->readProductTopologies()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->readTopologiesFromInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    const-string/jumbo v1, "reloadImmutableTopologies for product topologies failed"

    invoke-static {p1, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->readVendorTopologies()Ljava/io/InputStream;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/display/DisplayTopologyXmlStore;->readTopologiesFromInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_9 .. :try_end_9} :catch_1

    :goto_4
    const-string/jumbo v1, "reloadImmutableTopologies for vendor topologies failed"

    invoke-static {p1, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_5
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/server/display/topology/Topology;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    goto :goto_6

    :cond_4
    return-void
.end method

.method public static convertPersistentDisplayToTreeNode(Lcom/android/server/display/topology/Display;Landroid/hardware/display/DisplayTopology;Ljava/util/Map;)Landroid/hardware/display/DisplayTopology$TreeNode;
    .locals 9

    iget-object v0, p0, Lcom/android/server/display/topology/Display;->id:Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->getRoot()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/topology/Display;->children:Lcom/android/server/display/topology/Children;

    invoke-virtual {v2}, Lcom/android/server/display/topology/Children;->getDisplay()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/topology/Display;

    invoke-static {v3, p1, p2}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertPersistentDisplayToTreeNode(Lcom/android/server/display/topology/Display;Landroid/hardware/display/DisplayTopology;Ljava/util/Map;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v4

    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v5

    iget-object p1, p0, Lcom/android/server/display/topology/Display;->position:Lcom/android/server/display/topology/Position;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    :cond_1
    :goto_1
    move v6, p2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_3
    const/4 p2, 0x0

    goto :goto_1

    :goto_2
    iget-object p0, p0, Lcom/android/server/display/topology/Display;->offset:Ljava/lang/Float;

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :goto_3
    move v7, p0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_3

    :goto_4
    invoke-direct/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIFLjava/util/List;)V

    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t find displayId="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in current topology"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t map uniqueId="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/topology/Display;->id:Ljava/lang/String;

    const-string v0, " to displayId"

    invoke-static {p2, p0, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static convertTreeNodeForPersistence(Landroid/hardware/display/DisplayTopology$TreeNode;ILandroid/util/SparseArray;)Lcom/android/server/display/topology/Display;
    .locals 6

    const-string v0, "DisplayManager.DisplayTopologyXmlStore"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "Can\'t convertTreeNodeForPersistence, node == null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->getDisplayId()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t convertTreeNodeForPersistence, uniqueId is not found for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, Lcom/android/server/display/topology/Children;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v4, p1, p2}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertTreeNodeForPersistence(Landroid/hardware/display/DisplayTopology$TreeNode;ILandroid/util/SparseArray;)Lcom/android/server/display/topology/Display;

    move-result-object v4

    if-nez v4, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/display/topology/Children;->getDisplay()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p2, Lcom/android/server/display/topology/Display;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->getPosition()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    sget-object v1, Lcom/android/server/display/topology/Position;->bottom:Lcom/android/server/display/topology/Position;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unknown position="

    invoke-static {v1, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    sget-object v1, Lcom/android/server/display/topology/Position;->right:Lcom/android/server/display/topology/Position;

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/android/server/display/topology/Position;->top:Lcom/android/server/display/topology/Position;

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/android/server/display/topology/Position;->left:Lcom/android/server/display/topology/Position;

    :goto_1
    iput-object v1, p2, Lcom/android/server/display/topology/Display;->position:Lcom/android/server/display/topology/Position;

    iput-object v2, p2, Lcom/android/server/display/topology/Display;->id:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->getOffset()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/display/topology/Display;->offset:Ljava/lang/Float;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->getDisplayId()I

    move-result p0

    if-ne p0, p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, p2, Lcom/android/server/display/topology/Display;->primary:Ljava/lang/Boolean;

    iput-object v0, p2, Lcom/android/server/display/topology/Display;->children:Lcom/android/server/display/topology/Children;

    return-object p2
.end method

.method public static findPrimaryDisplayId(Lcom/android/server/display/topology/Display;Ljava/util/Map;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/topology/Display;->primary:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/topology/Display;->id:Ljava/lang/String;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t map uniqueId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/topology/Display;->id:Ljava/lang/String;

    const-string v1, " to displayId"

    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p0, p0, Lcom/android/server/display/topology/Display;->children:Lcom/android/server/display/topology/Children;

    invoke-virtual {p0}, Lcom/android/server/display/topology/Children;->getDisplay()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/topology/Display;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->findPrimaryDisplayId(Lcom/android/server/display/topology/Display;Ljava/util/Map;)I

    move-result v0

    if-eq v0, v1, :cond_3

    return v0

    :cond_4
    return v1
.end method

.method public static getUniqueIds(Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/util/SparseArray;Ljava/util/List;)Ljava/util/List;
    .locals 2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayTopologyXmlStore;->getUniqueIds(Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/util/SparseArray;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2
.end method

.method public static readTopologiesFromInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10

    sget-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    const-string v1, "DisplayManager.DisplayTopologyXmlStore"

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

    const-string/jumbo p0, "iStream is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string/jumbo v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v5, "displayTopologyState"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    new-instance p0, Lcom/android/server/display/topology/DisplayTopologyState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v5, "version"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/topology/DisplayTopologyState;->version:Ljava/lang/Integer;

    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v4, :cond_c

    if-eq v5, v6, :cond_c

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "topology"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Lcom/android/server/display/topology/Topology;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v8, "id"

    invoke-interface {v2, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    iput-object v8, v5, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    :cond_4
    const-string/jumbo v8, "order"

    invoke-interface {v2, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v5, Lcom/android/server/display/topology/Topology;->order:Ljava/lang/Integer;

    :cond_5
    const-string/jumbo v8, "immutable"

    invoke-interface {v2, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v5, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    :cond_6
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v4, :cond_9

    if-eq v8, v6, :cond_9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-eq v8, v7, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "display"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {v2}, Lcom/android/server/display/topology/Display;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/topology/Display;

    move-result-object v8

    iput-object v8, v5, Lcom/android/server/display/topology/Topology;->display:Lcom/android/server/display/topology/Display;

    goto :goto_1

    :cond_8
    invoke-static {v2}, Lcom/android/server/display/topology/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_9
    if-ne v8, v6, :cond_a

    invoke-virtual {p0}, Lcom/android/server/display/topology/DisplayTopologyState;->getTopology()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string/jumbo v0, "Topology is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-static {v2}, Lcom/android/server/display/topology/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_c
    if-ne v5, v6, :cond_d

    move-object v3, p0

    goto :goto_2

    :cond_d
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "DisplayTopologyState is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_2
    if-nez v3, :cond_f

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_f
    iget-object p0, v3, Lcom/android/server/display/topology/DisplayTopologyState;->version:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez p0, :cond_10

    move p0, v2

    goto :goto_3

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_3
    if-le p0, v4, :cond_12

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Topology version="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/display/topology/DisplayTopologyState;->version:Ljava/lang/Integer;

    if-nez v0, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_4
    const-string v0, " is not supported by DisplayTopologyXmlStore version=1"

    invoke-static {v2, v0, v1, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_12
    if-eqz v0, :cond_13

    const-string/jumbo p0, "readTopologiesFromInputStream: done"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-virtual {v3}, Lcom/android/server/display/topology/DisplayTopologyState;->getTopology()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/server/display/DisplayTopologyXmlStore$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method


# virtual methods
.method public final appendTopologies(Ljava/util/List;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/topology/Topology;

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/topology/Topology;

    const-string v2, "DisplayManager.DisplayTopologyXmlStore"

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addTopology: can\'t override immutable topology "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_3

    sget-boolean v1, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "appendTopology: MAX_NUMBER_OF_TOPOLOGIES is reached, can\'t append topology"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v2

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/topology/Topology;->order:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final clearUserData()V
    .locals 6

    const-string/jumbo v0, "saveTopologiesToFile "

    iget v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    const-string v2, "DisplayManager.DisplayTopologyXmlStore"

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t save topologies for userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-static {v0, p0, v2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lcom/android/server/display/topology/DisplayTopologyState;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/display/topology/DisplayTopologyState;->version:Ljava/lang/Integer;

    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;

    iget p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v5, "display_topology.xml"

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p0, "topology-state"

    invoke-direct {v3, v4, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Landroid/util/AtomicFilePrintWriter;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v3, v4}, Landroid/util/AtomicFilePrintWriter;-><init>(Landroid/util/AtomicFile;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v3, "clearUserData"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/display/topology/XmlWriter;

    invoke-direct {v3, p0}, Lcom/android/server/display/topology/XmlWriter;-><init>(Ljava/io/PrintWriter;)V

    invoke-static {v3, v1}, Lcom/android/server/display/topology/XmlWriter;->write(Lcom/android/server/display/topology/XmlWriter;Lcom/android/server/display/topology/DisplayTopologyState;)V

    invoke-virtual {p0}, Landroid/util/AtomicFilePrintWriter;->markSuccess()V

    sget-boolean v1, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Landroid/util/AtomicFilePrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Landroid/util/AtomicFilePrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    const-string/jumbo v0, "saveTopologiesToFile failed"

    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getTopologyId(Landroid/hardware/display/DisplayTopology;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;

    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->val$displayIdToUniqueIdMapping:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->getRoot()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p0, v0}, Lcom/android/server/display/DisplayTopologyXmlStore;->getUniqueIds(Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/util/SparseArray;Ljava/util/List;)Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string/jumbo p0, "|"

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final moveTopologyToHead(Lcom/android/server/display/topology/Topology;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/topology/Topology;

    invoke-virtual {v0}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/topology/Topology;->order:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/display/topology/Topology;->order:Ljava/lang/Integer;

    return-void
.end method

.method public final reloadTopologies(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    const-string v1, "DisplayManager.DisplayTopologyXmlStore"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reloadTopologies mUserId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->appendTopologies(Ljava/util/List;)V

    :cond_1
    iget p1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    if-gez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t reload topologies for userId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-static {p1, p0, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v2, "display_topology.xml"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->readTopologiesFromInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayTopologyXmlStore;->appendTopologies(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    const-string/jumbo p1, "reloadTopologies failed"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-void
.end method

.method public final saveTopologiesToFile()V
    .locals 6

    iget v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    const-string v1, "DisplayManager.DisplayTopologyXmlStore"

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t save topologies for userId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-static {v0, p0, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    sget-boolean v2, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v0, :cond_1

    if-eqz v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No topologies to save for userId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-static {v0, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/android/server/display/topology/DisplayTopologyState;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/display/topology/DisplayTopologyState;->version:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/topology/Topology;

    iget-object v5, v4, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    if-nez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_1
    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/android/server/display/topology/DisplayTopologyState;->getTopology()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;

    iget p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v5, "display_topology.xml"

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p0, "topology-state"

    invoke-direct {v3, v4, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Landroid/util/AtomicFilePrintWriter;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v3, v4}, Landroid/util/AtomicFilePrintWriter;-><init>(Landroid/util/AtomicFile;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Lcom/android/server/display/topology/XmlWriter;

    invoke-direct {v3, p0}, Lcom/android/server/display/topology/XmlWriter;-><init>(Ljava/io/PrintWriter;)V

    invoke-static {v3, v0}, Lcom/android/server/display/topology/XmlWriter;->write(Lcom/android/server/display/topology/XmlWriter;Lcom/android/server/display/topology/DisplayTopologyState;)V

    invoke-virtual {p0}, Landroid/util/AtomicFilePrintWriter;->markSuccess()V

    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveTopologiesToFile "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Landroid/util/AtomicFilePrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_5

    :goto_3
    :try_start_3
    invoke-virtual {p0}, Landroid/util/AtomicFilePrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    const-string/jumbo v0, "saveTopologiesToFile failed"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    return-void
.end method

.method public final saveTopology(Landroid/hardware/display/DisplayTopology;)Z
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->getTopologyId(Landroid/hardware/display/DisplayTopology;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager.DisplayTopologyXmlStore"

    sget-boolean v2, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "saveTopology userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", topologyId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "saveTopology cancelled: topology id is null for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->getRoot()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->getPrimaryDisplayId()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;

    iget-object v6, v6, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->val$displayIdToUniqueIdMapping:Landroid/util/SparseArray;

    invoke-static {v4, v5, v6}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertTreeNodeForPersistence(Landroid/hardware/display/DisplayTopology$TreeNode;ILandroid/util/SparseArray;)Lcom/android/server/display/topology/Display;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move-object v6, v5

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/android/server/display/topology/Topology;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v4, v6, Lcom/android/server/display/topology/Topology;->display:Lcom/android/server/display/topology/Display;

    iput-object v0, v6, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    :goto_0
    if-nez v6, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "saveTopology cancelled: can\'t convert topology "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    iget-object v0, v6, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/topology/Topology;

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "prependTopology: can\'t override immutable topology "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v6, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_c

    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/topology/Topology;

    iget-object v4, v0, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    if-nez v4, :cond_7

    move v4, v3

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v7

    if-ge v4, v7, :cond_6

    :cond_9
    move-object v5, v0

    goto :goto_2

    :cond_a
    if-nez v5, :cond_b

    const-string/jumbo p0, "prependTopology: can\'t find a topology to remove to free up space"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-string/jumbo p0, "saveTopology cancelled: can\'t prependTopology"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_b
    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    iget-object v0, v5, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "prependTopology: remove topology "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const p1, 0x7fffffff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v6, Lcom/android/server/display/topology/Topology;->order:Ljava/lang/Integer;

    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayTopologyXmlStore;->moveTopologyToHead(Lcom/android/server/display/topology/Topology;)V

    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    iget-object v0, v6, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyXmlStore;->saveTopologiesToFile()V

    const/4 p0, 0x1

    return p0
.end method
