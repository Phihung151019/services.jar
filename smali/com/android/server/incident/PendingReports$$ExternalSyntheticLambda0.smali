.class public final synthetic Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/incident/PendingReports;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/IIncidentAuthListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/incident/PendingReports;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/incident/PendingReports;

    iput p2, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$5:I

    iput-object p7, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$6:Landroid/os/IIncidentAuthListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v1, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/incident/PendingReports;

    iget v0, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$5:I

    iget-object v6, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$6:Landroid/os/IIncidentAuthListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "delegating consent for report: "

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v7, v1, Lcom/android/server/incident/PendingReports;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v7, v0, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "IncidentCompanionService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Calling uid "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t match package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v2}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->getCurrentUserIfAdmin()I

    move-result v7

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v9, -0x2710

    if-eq v7, v9, :cond_6

    iget-object v9, v1, Lcom/android/server/incident/PendingReports;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    invoke-virtual {v9, v8, v7}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-static {v6, v2}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v9, Landroid/content/AttributionSource$Builder;

    invoke-direct {v9, v0}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    invoke-virtual {v9, v2}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/incident/PendingReports;->mPermissionManager:Landroid/permission/PermissionManager;

    const-string/jumbo v10, "android.permission.CAPTURE_CONSENTLESS_BUGREPORT_DELEGATED_CONSENT"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v0, v11}, Landroid/permission/PermissionManager;->checkPermissionForDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v10, v0

    goto :goto_1

    :cond_3
    move v10, v9

    :goto_1
    if-eqz v10, :cond_5

    :try_start_1
    new-instance v0, Lcom/android/server/incident/PendingReports$PendingReportRec;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/incident/PendingReports$PendingReportRec;-><init>(Lcom/android/server/incident/PendingReports;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    if-eqz v10, :cond_4

    const-string v10, "IncidentCompanionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_4
    :goto_2
    invoke-interface {v6}, Landroid/os/IIncidentAuthListener;->onReportApproved()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :goto_3
    const-string v0, "IncidentCompanionService"

    const-string/jumbo v10, "authorizeReportImpl listener.onReportApproved RemoteException: "

    invoke-static {v0, v10, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    iget-object p0, v1, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_2
    new-instance v0, Lcom/android/server/incident/PendingReports$PendingReportRec;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/incident/PendingReports$PendingReportRec;-><init>(Lcom/android/server/incident/PendingReports;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    iget-object v2, v1, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v6}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    new-instance v2, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v6, v8, v7}, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    invoke-interface {p0, v2, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    const-string p0, "IncidentCompanionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Remote died while trying to register death listener: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v6, v8, v7}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    :goto_4
    invoke-virtual {v1, v7, v8}, Lcom/android/server/incident/PendingReports;->sendBroadcast(ILandroid/content/ComponentName;)V

    :goto_5
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_6
    :goto_6
    const-string p0, "IncidentCompanionService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t belong to the same profile group of the current admin user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v2}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    return-void
.end method
