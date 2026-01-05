.class public final Lcom/android/server/autofill/AutofillManagerService$LocalService;
.super Landroid/view/autofill/AutofillManagerInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAutofillOptions(Ljava/lang/String;JI)Landroid/content/AutofillOptions;
    .locals 6

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_3

    monitor-exit v3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    if-nez v0, :cond_4

    monitor-exit v3

    goto :goto_1

    :cond_4
    iget-wide v4, v0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->maxVersionCode:J

    cmp-long p2, p2, v4

    if-gtz p2, :cond_5

    const/4 v2, 0x1

    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    new-instance p2, Landroid/content/AutofillOptions;

    invoke-direct {p2, v1, v2}, Landroid/content/AutofillOptions;-><init>(IZ)V

    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object p3, p3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    invoke-virtual {p3, p2, p4, p1}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->injectAugmentedAutofillInfo(Landroid/content/AutofillOptions;ILjava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object p3, p3, Lcom/android/server/autofill/AutofillManagerService;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p3, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p3, p3, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    const-wide/16 v1, 0x0

    if-eqz p3, :cond_7

    iget-object p3, p3, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    if-nez p3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_7
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iput-wide v1, p2, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_2
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->getAppDisabledActivitiesLocked(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_8
    const/4 p0, 0x0

    :goto_3
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-object p0, p2, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    return-object p2

    :goto_4
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :goto_5
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final isAugmentedAutofillServiceForUser(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p0, p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0

    return p2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onBackKeyPressed()V
    .locals 4

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManagerService"

    const-string/jumbo v1, "onBackKeyPressed()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    iget-object v0, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
