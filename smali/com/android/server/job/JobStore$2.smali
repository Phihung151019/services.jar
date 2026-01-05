.class public final Lcom/android/server/job/JobStore$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mJobFiles:Landroid/util/SparseArray;

.field public final mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

.field public final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    new-instance p1, Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-direct {p1, p0}, Lcom/android/server/job/JobStore$2$CopyConsumer;-><init>(Lcom/android/server/job/JobStore$2;)V

    iput-object p1, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    return-void
.end method

.method public static addAttributesToJobTag(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "jobid"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "package"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "class"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "sourcePackageName"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "namespace"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "sourceTag"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sourceUserId"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getBias()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bias"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "priority"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "flags"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "internalFlags"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lastSuccessfulRunTime"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lastFailedRunTime"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    const-string/jumbo p1, "cumulativeExecutionTime"

    invoke-interface {p0, v2, p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static deepCopyBundle(ILandroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .locals 4

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/PersistableBundle;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/os/PersistableBundle;

    add-int/lit8 v3, p0, -0x1

    invoke-static {v3, v2}, Lcom/android/server/job/JobStore$2;->deepCopyBundle(ILandroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static writeConstraintsToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 7

    const/4 v0, 0x0

    const-string/jumbo v1, "constraints"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest;->getCapabilities()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/job/JobStore;->intArrayToString([I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "net-capabilities-csv"

    invoke-interface {p0, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Landroid/net/NetworkRequest;->getForbiddenCapabilities()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/job/JobStore;->intArrayToString([I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "net-forbidden-capabilities-csv"

    invoke-interface {p0, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/job/JobStore;->intArrayToString([I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "net-transport-types-csv"

    invoke-interface {p0, v0, v3, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_0

    const-string/jumbo p1, "estimated-download-bytes"

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v3

    invoke-interface {p0, v0, p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v3

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    const-string/jumbo p1, "estimated-upload-bytes"

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v3

    invoke-interface {p0, v0, p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v3

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    const-string/jumbo p1, "minimum-network-chunk-bytes"

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v3

    invoke-interface {p0, v0, p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "idle"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v0, p1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "charging"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v0, p1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string/jumbo p1, "battery-not-low"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v0, p1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string/jumbo p1, "storage-not-low"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, p1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeDebugInfoToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 7

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getDebugTagsArraySet()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const-string/jumbo v3, "debug-info"

    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_1

    const-string/jumbo v4, "trace-tag"

    invoke-interface {p0, v2, v4, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_2

    const-string/jumbo v4, "debug-tag"

    invoke-interface {p0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "tag"

    invoke-interface {p0, v2, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 12

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    const-string/jumbo v2, "one-off"

    const-string/jumbo v3, "periodic"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "period"

    invoke-interface {p0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "flex"

    invoke-interface {p0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    sget-boolean v5, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "storing original UTC timestamps for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JobStore"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p1, v9}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v1, :cond_2

    iget-wide v9, p1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    sub-long/2addr v9, v7

    add-long/2addr v9, v5

    goto :goto_1

    :cond_2
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_1
    const-string/jumbo v11, "deadline"

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v4, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    const/high16 v9, -0x80000000

    invoke-virtual {p1, v9}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v1, :cond_4

    iget-wide v9, p1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    sub-long/2addr v9, v7

    add-long/2addr v9, v5

    goto :goto_2

    :cond_4
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_2
    const-string/jumbo v1, "delay"

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x7530

    cmp-long v1, v5, v7

    if-nez v1, :cond_6

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    :cond_6
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "backoff-policy"

    invoke-interface {p0, v4, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "initial-backoff"

    invoke-interface {p0, v4, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :cond_8
    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeJobWorkItemListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V
    .locals 11

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v2, "JobStore"

    const-string v3, "Encountered JobWorkItem with Intent in persisting list"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const-string/jumbo v4, "job-work-item"

    invoke-interface {p0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "delivery-count"

    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v6

    invoke-interface {p0, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    const-string/jumbo v5, "estimated-download-bytes"

    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v9

    invoke-interface {p0, v3, v5, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    const-string/jumbo v5, "estimated-upload-bytes"

    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v9

    invoke-interface {p0, v3, v5, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    const-string/jumbo v5, "minimum-network-chunk-bytes"

    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v6

    invoke-interface {p0, v3, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string/jumbo v5, "extras"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v6, 0xa

    invoke-static {v6, v2}, Lcom/android/server/job/JobStore$2;->deepCopyBundle(ILandroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v1, p0

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v4, v0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    iget-boolean v6, v0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, v0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-boolean v4, v0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v0}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$mprepare(Lcom/android/server/job/JobStore$2$CopyConsumer;)V

    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-object v8, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    iput v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    iput v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    iput v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    iget-object v0, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v6

    move v7, v0

    :goto_0
    if-ltz v7, :cond_b

    if-eqz v4, :cond_1

    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    iget-object v0, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v8, v1, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    if-nez v8, :cond_2

    iget-object v8, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "jobs_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Ljava/io/File;

    iget-object v12, v8, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    const-string v13, ".xml"

    invoke-static {v10, v13}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v12, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Landroid/util/AtomicFile;

    iget-object v8, v8, Lcom/android/server/job/JobStore;->mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    invoke-direct {v10, v11, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Landroid/util/SystemConfigFileCommitEventLogger;)V

    iget-object v8, v1, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v8, v10

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v8, v0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    :cond_2
    :goto_1
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "JobStore"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Writing for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    iget-object v11, v11, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    iget-object v11, v11, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " jobs"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    iget-object v0, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string/jumbo v10, "job"

    const-string/jumbo v11, "job-info"

    const-string v12, "JobStore"

    iget-object v13, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v13, v13, Lcom/android/server/job/JobStore;->mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/util/SystemConfigFileCommitEventLogger;->setStartTime(J)V

    :try_start_2
    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    :try_start_3
    invoke-static {v13}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v14

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v14, v9, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v15, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v14, v15, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {v14, v9, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v15, "version"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move/from16 v16, v6

    :try_start_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v14, v9, v15, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move v6, v5

    move v15, v6

    move/from16 v17, v15

    move/from16 v18, v17

    :goto_2
    :try_start_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-ge v6, v5, :cond_6

    :try_start_6
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    sget-boolean v19, Lcom/android/server/job/JobStore;->DEBUG:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v19, :cond_4

    :try_start_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    const-string/jumbo v0, "Saving job "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v9, 0x0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-wide/from16 v21, v2

    const/4 v2, 0x0

    :goto_3
    move-object v3, v0

    goto/16 :goto_a

    :cond_4
    move-object/from16 v20, v0

    :goto_4
    :try_start_8
    invoke-interface {v14, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v14, v5}, Lcom/android/server/job/JobStore$2;->addAttributesToJobTag(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    invoke-static {v14, v5}, Lcom/android/server/job/JobStore$2;->writeConstraintsToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    invoke-static {v14, v5}, Lcom/android/server/job/JobStore$2;->writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    iget-object v0, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v9, "extras"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-wide/from16 v21, v2

    const/4 v2, 0x0

    :try_start_9
    invoke-interface {v14, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v3, 0xa

    invoke-static {v3, v0}, Lcom/android/server/job/JobStore$2;->deepCopyBundle(ILandroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {v14, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v5, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-static {v14, v0}, Lcom/android/server/job/JobStore$2;->writeJobWorkItemListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    iget-object v0, v5, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-static {v14, v0}, Lcom/android/server/job/JobStore$2;->writeJobWorkItemListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    invoke-static {v14, v5}, Lcom/android/server/job/JobStore$2;->writeDebugInfoToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    const/4 v2, 0x0

    invoke-interface {v14, v2, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v15, v15, 0x1

    iget v0, v5, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_5

    add-int/lit8 v17, v17, 0x1

    const-class v0, Lcom/android/server/content/SyncJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v0, :cond_5

    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    :goto_5
    move-object v3, v0

    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_5
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v2, v21

    const/4 v9, 0x0

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-wide/from16 v21, v2

    goto :goto_5

    :cond_6
    move-wide/from16 v21, v2

    move-object v2, v9

    :try_start_a
    invoke-interface {v14, v2, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    invoke-virtual {v8, v13}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v13, :cond_7

    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move v5, v15

    goto/16 :goto_f

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto/16 :goto_d

    :cond_7
    :goto_7
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    iget v3, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    add-int/2addr v3, v15

    iput v3, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    :goto_8
    iget v3, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    add-int v3, v3, v17

    iput v3, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    iget v3, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    add-int v3, v3, v18

    iput v3, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    goto/16 :goto_e

    :catchall_5
    move-exception v0

    goto/16 :goto_3

    :catchall_6
    move-exception v0

    move-wide/from16 v21, v2

    move-object v2, v9

    goto/16 :goto_3

    :catchall_7
    move-exception v0

    move-wide/from16 v21, v2

    :goto_9
    move-object v2, v9

    move-object v3, v0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_a

    :catchall_8
    move-exception v0

    move-wide/from16 v21, v2

    move/from16 v16, v6

    goto :goto_9

    :goto_a
    if-eqz v13, :cond_8

    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception v0

    :try_start_d
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_b
    throw v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_a
    move-exception v0

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_f

    :catch_2
    move-exception v0

    move-wide/from16 v21, v2

    move/from16 v16, v6

    move-object v2, v9

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_c
    :try_start_e
    sget-boolean v3, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "Error persisting bundle."

    invoke-static {v12, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :cond_9
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    iget v3, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    add-int/2addr v3, v15

    iput v3, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    goto :goto_8

    :catch_3
    move-exception v0

    move-wide/from16 v21, v2

    move/from16 v16, v6

    move-object v2, v9

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_d
    :try_start_f
    sget-boolean v3, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "Error writing out job data."

    invoke-static {v12, v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :cond_a
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    iget v3, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    add-int/2addr v3, v15

    iput v3, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    goto :goto_8

    :goto_e
    add-int/lit8 v7, v7, -0x1

    move-object v9, v2

    move/from16 v6, v16

    move-wide/from16 v2, v21

    const/4 v5, 0x0

    goto/16 :goto_0

    :goto_f
    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v1, v1, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    iget v2, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    add-int/2addr v2, v5

    iput v2, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    iget v2, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    add-int v2, v2, v17

    iput v2, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    iget v2, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    add-int v2, v2, v18

    iput v2, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    throw v0

    :cond_b
    move-wide/from16 v21, v2

    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "JobStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finished writing, took "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v5, v21

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    iget-object v0, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    if-nez v4, :cond_d

    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_d
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v2, v0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_10
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-boolean v3, v0, Lcom/android/server/job/JobStore;->mSplitFileMigrationNeeded:Z

    if-eqz v3, :cond_10

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_10

    aget-object v6, v0, v5

    if-eqz v4, :cond_e

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "jobs_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_11

    :catchall_b
    move-exception v0

    goto :goto_12

    :cond_e
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "jobs_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_f
    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_10
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-void

    :goto_12
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    throw v0

    :catchall_c
    move-exception v0

    :try_start_11
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    throw v0

    :goto_13
    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw v0
.end method
