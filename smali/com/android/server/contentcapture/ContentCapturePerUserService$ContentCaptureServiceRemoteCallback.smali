.class public final Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;
.super Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-direct {p0}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final disableSelf()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    const-string v0, "ContentCapturePerUserService"

    const-string/jumbo v1, "disableSelf()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content_capture_enabled"

    const-string v4, "0"

    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget v5, v5, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setContentCaptureConditions(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    const-string v0, "ContentCapturePerUserService"

    const-string/jumbo v1, "setContentCaptureConditions("

    const-string v2, "): "

    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_0

    const-string/jumbo v2, "null"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " conditions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setContentCaptureWhitelist(Ljava/util/List;Ljava/util/List;)V
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    const-string v1, "ContentCapturePerUserService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setContentCaptureWhitelist("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v3, "null_packages"

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " packages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string/jumbo v3, "null_activities"

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " activities"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget v3, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-static {v2, v3, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v2, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v2, v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v2, v1}, Lcom/android/internal/infra/GlobalWhitelistState;->getWhitelistedPackages(I)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0xcfd2

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v4, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v4, v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v4, v2, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->setWhitelist(ILjava/util/List;Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0xcfd1

    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v8, p1

    goto :goto_2

    :cond_3
    move v8, v2

    :goto_2
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    move v9, p1

    goto :goto_3

    :cond_4
    move v9, v2

    :goto_3
    const/16 v4, 0xcf

    const/4 v5, 0x3

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object p2, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p2, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object p2, p2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget p1, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {p2, p1}, Lcom/android/internal/infra/GlobalWhitelistState;->getWhitelistedPackages(I)Landroid/util/ArraySet;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result p2

    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget v4, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v4, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    :cond_5
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result p2

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0xcfd3

    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move v1, v2

    :goto_4
    if-ge v1, p2, :cond_6

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v5, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v5, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget v4, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v5, v4, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v5, v5, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v5, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v6, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v6, v3, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Landroid/content/ContentCaptureOptions;)V

    invoke-virtual {v5, v6}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    add-int/2addr v1, v0

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object p1, p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_7

    goto :goto_6

    :cond_7
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2, p1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move v1, v2

    :goto_5
    if-ge v1, p1, :cond_a

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v3, v3, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v5, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v5, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget v4, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object v6, v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v4, v6}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isWhitelisted(ILandroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v4, v4, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v5, v5, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v5, v5, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v5, :cond_8

    sget v5, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    const-string v5, "ContentCapturePerUserService"

    const-string/jumbo v6, "marking session "

    const-string v7, " ("

    invoke-static {v4, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") for un-whitelisting"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p2, v4, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_9
    add-int/2addr v1, v0

    goto :goto_5

    :cond_a
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-gtz p1, :cond_b

    :goto_6
    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    move v3, v2

    :goto_7
    if-ge v3, p1, :cond_d

    :try_start_0
    invoke-virtual {p2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v5, v5, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v5, v5, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v5, :cond_c

    sget v5, Lcom/android/server/contentcapture/ContentCapturePerUserService;->$r8$clinit:I

    const-string v5, "ContentCapturePerUserService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "un-whitelisting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :cond_c
    :goto_8
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v5, v5, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    invoke-virtual {v4, v2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->setContentCaptureEnabledLocked(Z)V

    add-int/2addr v3, v0

    goto :goto_7

    :cond_d
    monitor-exit v1

    return-void

    :goto_9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final writeSessionFlush(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    .locals 16

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    iget v7, v0, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    iget v8, v0, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    iget v9, v0, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    iget v10, v0, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    iget v11, v0, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    iget v12, v1, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    iget v13, v1, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    iget v14, v1, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    const/16 v3, 0xd1

    const/4 v6, 0x0

    move/from16 v4, p1

    move/from16 v15, p5

    invoke-static/range {v3 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IIIIIIIII)V

    return-void
.end method
