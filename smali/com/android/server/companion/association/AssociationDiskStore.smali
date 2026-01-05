.class public final Lcom/android/server/companion/association/AssociationDiskStore;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationDiskStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;
    .locals 53

    move-object/from16 v0, p2

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v2, "persistence-version"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    new-instance v4, Lcom/android/server/companion/association/Associations;

    invoke-direct {v4}, Lcom/android/server/companion/association/Associations;-><init>()V

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const-string/jumbo v8, "time_approved"

    const-string/jumbo v9, "notify_device_nearby"

    const-string/jumbo v10, "package"

    const-string/jumbo v11, "profile"

    const-string/jumbo v12, "association"

    const-string/jumbo v13, "associations"

    if-eqz v2, :cond_9

    if-eq v2, v5, :cond_0

    return-object v4

    :cond_0
    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    invoke-static {v1, v13}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1, v13}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v2, "max-id"

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    new-instance v14, Lcom/android/server/companion/association/Associations;

    invoke-direct {v14}, Lcom/android/server/companion/association/Associations;-><init>()V

    iput v5, v14, Lcom/android/server/companion/association/Associations;->mVersion:I

    :goto_1
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    invoke-static {v1, v13}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput v2, v14, Lcom/android/server/companion/association/Associations;->mMaxId:I

    move-object v4, v14

    goto :goto_0

    :cond_1
    invoke-static {v1, v12}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1, v12}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v4, "id"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v16

    invoke-static {v1, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static {v1, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v4, "mac_address"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x0

    if-eqz v4, :cond_3

    invoke-static {v4}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v4

    move-object/from16 v19, v4

    goto :goto_2

    :cond_3
    move-object/from16 v19, v15

    :goto_2
    const-string/jumbo v4, "display_name"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v4, "self_managed"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v23

    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v24

    const-string/jumbo v4, "revoked"

    invoke-static {v1, v4, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v25

    const-string/jumbo v4, "pending"

    invoke-static {v1, v4, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v26

    invoke-static {v1, v8, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v27

    const-string/jumbo v4, "last_time_connected"

    move/from16 p1, v5

    const-wide v5, 0x7fffffffffffffffL

    invoke-static {v1, v4, v5, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v29

    const-string/jumbo v4, "system_data_sync_flags"

    invoke-static {v1, v4, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v31

    const-string/jumbo v4, "device_icon"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_4

    move-object/from16 v32, v15

    goto :goto_3

    :cond_4
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v5}, Landroid/graphics/drawable/Icon;->createFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    move-object/from16 v32, v4

    :goto_3
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    const-string/jumbo v4, "device_id"

    invoke-static {v1, v4}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "custom_device_id"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mac_address_device_id"

    invoke-static {v1, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v5}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v15

    :cond_5
    new-instance v5, Landroid/companion/DeviceId;

    invoke-direct {v5, v4, v15}, Landroid/companion/DeviceId;-><init>(Ljava/lang/String;Landroid/net/MacAddress;)V

    move-object/from16 v33, v5

    goto :goto_4

    :cond_6
    move-object/from16 v33, v15

    :goto_4
    new-instance v15, Landroid/companion/AssociationInfo;

    const/16 v22, 0x0

    move/from16 v17, p0

    invoke-direct/range {v15 .. v33}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;)V

    iget-object v4, v14, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v5, p1

    const-wide/16 v6, 0x0

    goto/16 :goto_1

    :cond_7
    move/from16 p1, v5

    invoke-static {v1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v4

    :cond_8
    move/from16 v5, p1

    const-wide/16 v6, 0x0

    goto/16 :goto_0

    :cond_9
    move/from16 p1, v5

    invoke-static {v1, v13}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const v0, 0x186a0

    mul-int v0, v0, p0

    add-int/lit8 v0, v0, 0x1

    new-instance v2, Lcom/android/server/companion/association/Associations;

    invoke-direct {v2}, Lcom/android/server/companion/association/Associations;-><init>()V

    iput v3, v2, Lcom/android/server/companion/association/Associations;->mVersion:I

    :goto_5
    move/from16 v35, v0

    :goto_6
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    invoke-static {v1, v13}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v0, v35, -0x1

    iput v0, v2, Lcom/android/server/companion/association/Associations;->mMaxId:I

    return-object v2

    :cond_a
    invoke-static {v1, v12}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v0, v35, 0x1

    invoke-static {v1, v12}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-static {v1, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string/jumbo v3, "device"

    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v43

    const-wide/16 v4, 0x0

    invoke-static {v1, v8, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v46

    new-instance v34, Landroid/companion/AssociationInfo;

    invoke-static {v3}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v38

    const-wide v48, 0x7fffffffffffffffL

    const/16 v50, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    move/from16 v36, p0

    invoke-direct/range {v34 .. v52}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;)V

    move-object/from16 v3, v34

    iget-object v6, v2, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public static requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v0, "Should be at the start of \""

    const-string v1, "\" tag"

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeLastRemovedAssociation(Landroid/companion/AssociationInfo;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Writing last removed association="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to disk..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_AssociationDiskStore"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v0, p0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/companion/AssociationInfo$Builder;->setDeviceMacAddress(Landroid/net/MacAddress;)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    invoke-virtual {v0, p0}, Landroid/companion/AssociationInfo$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationInfo$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    const-string/jumbo v1, "last_removed_association.txt"

    invoke-static {v0, v1}, Lcom/android/server/companion/utils/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda2;-><init>(Landroid/companion/AssociationInfo;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method


# virtual methods
.method public final getStorageFileForUser(I)Landroid/util/AtomicFile;
    .locals 2

    iget-object p0, p0, Lcom/android/server/companion/association/AssociationDiskStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda1;-><init>(I)V

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    return-object p0
.end method

.method public final readAssociationsByUsers(Ljava/util/List;)Ljava/util/Map;
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "CDM_AssociationDiskStore"

    const-string/jumbo v6, "Reading associations for user "

    const-string v7, " from disk."

    invoke-static {v4, v6, v7, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/io/File;

    invoke-static {v4}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "companion_device_manager_associations.xml"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v4, Lcom/android/server/companion/association/Associations;

    invoke-direct {v4}, Lcom/android/server/companion/association/Associations;-><init>()V

    monitor-exit v5

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_0
    new-instance v7, Landroid/util/AtomicFile;

    invoke-direct {v7, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const-string/jumbo v8, "associations"

    goto :goto_1

    :cond_1
    const-string/jumbo v8, "state"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    move-object v7, v5

    :goto_1
    :try_start_1
    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v4, v7, v8}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_3

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_3

    :catchall_1
    move-exception v4

    if-eqz v7, :cond_2

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v7

    :try_start_5
    invoke-virtual {v4, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v4
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    const-string v7, "CDM_AssociationDiskStore"

    const-string v8, "Error while reading associations file"

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Lcom/android/server/companion/association/Associations;

    invoke-direct {v4}, Lcom/android/server/companion/association/Associations;-><init>()V

    :cond_3
    :goto_4
    if-nez v6, :cond_4

    iget v7, v4, Lcom/android/server/companion/association/Associations;->mVersion:I

    const/4 v8, 0x1

    if-ge v7, v8, :cond_5

    :cond_4
    new-instance v7, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/association/Associations;)V

    invoke-static {v5, v7}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_5
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_5
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :goto_6
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0

    :cond_6
    return-object v0
.end method
