.class public final Lcom/android/server/companion/BackupRestoreProcessor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAssociationDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

.field public final mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mContext:Landroid/content/Context;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/association/AssociationDiskStore;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/association/AssociationRequestsProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object p3, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    iput-object p4, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    iput-object p5, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    iput-object p6, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    return-void
.end method


# virtual methods
.method public final applyRestoredPayload([BI)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    const-string/jumbo v3, "applyRestoredPayload() userId=["

    const-string/jumbo v4, "], payload size=["

    invoke-static {v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    const-string/jumbo v5, "]."

    const-string v6, "CDM_BackupRestoreProcessor"

    invoke-static {v4, v5, v6, v3}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    array-length v3, v0

    if-nez v3, :cond_0

    const-string v0, "CDM backup payload was empty."

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v0, "Unsupported backup payload version"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string/jumbo v0, "state"

    invoke-static {v2, v7, v0}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    move-object v3, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    const-string v3, "CDM_AssociationDiskStore"

    const-string v7, "Error while reading associations file"

    invoke-static {v3, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/android/server/companion/association/Associations;

    invoke-direct {v0}, Lcom/android/server/companion/association/Associations;-><init>()V

    goto :goto_0

    :goto_3
    iget-object v7, v1, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    :try_start_6
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    invoke-static {v8}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    const-string/jumbo v4, "requests"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsFromXml(ILcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :goto_4
    move-object v4, v0

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_4

    :goto_5
    :try_start_9
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v4
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :goto_7
    const-string v4, "CDM_SystemDataTransferRequestStore"

    const-string v8, "Error while reading requests file"

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    iget-object v8, v1, Lcom/android/server/companion/BackupRestoreProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(IIJ)Ljava/util/List;

    move-result-object v4

    iget-object v3, v3, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/companion/AssociationInfo;

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_9

    :cond_3
    new-instance v9, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v8}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;-><init>(ILandroid/companion/AssociationInfo;)V

    invoke-static {v0, v9}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v10

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v12, v10, v11}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;

    const/4 v13, 0x1

    invoke-direct {v11, v13, v8}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;-><init>(ILandroid/companion/AssociationInfo;)V

    invoke-static {v10, v11}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/companion/AssociationInfo;

    if-nez v10, :cond_5

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v12, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_b
    iget-object v13, v12, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    iget v14, v12, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    const/4 v13, 0x1

    add-int/2addr v14, v13

    :try_start_d
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    new-instance v11, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v11, v14, v2, v10, v8}, Landroid/companion/AssociationInfo$Builder;-><init>(IILjava/lang/String;Landroid/companion/AssociationInfo;)V

    invoke-virtual {v11}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v15, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda2;

    const/4 v13, 0x0

    invoke-direct {v15, v13, v10}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-interface {v11, v15}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v1, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11, v11}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->maybeGrantRoleAndStoreAssociation(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    goto :goto_a

    :cond_4
    new-instance v10, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v10, v8}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    const/4 v8, 0x1

    invoke-virtual {v10, v8}, Landroid/companion/AssociationInfo$Builder;->setPending(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/android/server/companion/association/AssociationStore;->addAssociation(Landroid/companion/AssociationInfo;)V

    :goto_a
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/companion/datatransfer/SystemDataTransferRequest;

    invoke-virtual {v9, v14}, Landroid/companion/datatransfer/SystemDataTransferRequest;->copyWithNewId(I)Landroid/companion/datatransfer/SystemDataTransferRequest;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/companion/datatransfer/SystemDataTransferRequest;->setUserId(I)V

    invoke-virtual {v7, v2, v9}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    goto :goto_b

    :catchall_4
    move-exception v0

    goto :goto_c

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    throw v0

    :goto_c
    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v0

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Conflict detected with association id="

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getId()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " while restoring CDM backup. Keeping local association."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getId()I

    move-result v8

    invoke-virtual {v7, v2, v8}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsByAssociationId(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/companion/datatransfer/SystemDataTransferRequest;

    new-instance v12, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda2;

    const/4 v13, 0x1

    invoke-direct {v12, v13, v11}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-static {v8, v12}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_d

    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Restoring "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " to an existing association id=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/companion/datatransfer/SystemDataTransferRequest;->copyWithNewId(I)Landroid/companion/datatransfer/SystemDataTransferRequest;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/companion/datatransfer/SystemDataTransferRequest;->setUserId(I)V

    invoke-virtual {v7, v2, v11}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    goto :goto_d

    :cond_7
    return-void

    :catch_2
    move-exception v0

    const-string v1, "CDM backup payload was mal-formatted."

    invoke-static {v6, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getBackupPayload(I)[B
    .locals 4

    const-string v0, "CDM_BackupRestoreProcessor"

    const-string/jumbo v1, "getBackupPayload() userId=["

    const-string/jumbo v2, "]."

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CDM_AssociationDiskStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fetching stored state data for user "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from disk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/android/server/companion/utils/DataStoreUtils;->fileToByteArray(Landroid/util/AtomicFile;)[B

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    array-length v0, v1

    iget-object p0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p0

    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lcom/android/server/companion/utils/DataStoreUtils;->fileToByteArray(Landroid/util/AtomicFile;)[B

    move-result-object p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    array-length p0, p1

    add-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
