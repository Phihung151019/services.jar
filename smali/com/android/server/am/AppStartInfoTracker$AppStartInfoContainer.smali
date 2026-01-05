.class public final Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mInfos:Ljava/util/ArrayList;

.field public final mMaxCapacity:I

.field public mMonitoringModeEnabled:Z

.field public mUid:I

.field public final synthetic this$0:Lcom/android/server/am/AppStartInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppStartInfoTracker;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMaxCapacity:I

    return-void
.end method

.method public static calculateAverage(Ljava/util/List;)J
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/OptionalDouble;->orElse(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public final addTimestampToStartLocked(IJ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationStartInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationStartInfo;->getStartupState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/app/ApplicationStartInfo;->getStartupTimestamps()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-ne v2, v4, :cond_4

    const/4 v2, 0x5

    if-eq p1, v2, :cond_4

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/4 v2, 0x7

    if-eq p1, v2, :cond_4

    goto/16 :goto_2

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, p2, v6

    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    if-ne p1, v5, :cond_a

    invoke-virtual {v0, v4}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {v0}, Landroid/app/ApplicationStartInfo;->getStartupState()I

    move-result p2

    if-ne p2, v4, :cond_9

    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_6

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    :goto_0
    if-ge v1, p3, :cond_8

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v2, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

    invoke-interface {v2, v0}, Landroid/app/IApplicationStartInfoCompleteListener;->onApplicationStartInfoComplete(Landroid/app/ApplicationStartInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_9
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_a
    :goto_2
    return-void
.end method

.method public final writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 13

    const-wide v0, 0x20b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    iget v4, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mUid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    invoke-virtual {v3}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v3

    sget-wide v5, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_HISTORY_LENGTH_MS:J

    sub-long/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v5, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationStartInfo;

    invoke-virtual {v5}, Landroid/app/ApplicationStartInfo;->getMonotonicCreationTimeMs()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v7, p1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/app/ApplicationStartInfo;

    const-wide v8, 0x20b00000002L

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p1

    invoke-virtual/range {v6 .. v12}, Landroid/app/ApplicationStartInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    move-object p1, v7

    goto :goto_0

    :cond_1
    move-object v7, p1

    const-wide v2, 0x10800000003L

    iget-boolean p0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    invoke-virtual {v7, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
