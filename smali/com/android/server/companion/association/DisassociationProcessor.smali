.class public final Lcom/android/server/companion/association/DisassociationProcessor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mCompanionAppController:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePresenceMonitor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mOnPackageVisibilityChangeListener:Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

.field public final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/companion/association/DisassociationProcessor;->ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/android/server/companion/association/AssociationStore;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/devicepresence/CompanionAppBinder;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/transport/CompanionTransportManager;Landroid/app/NotificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mActivityManager:Landroid/app/ActivityManager;

    iput-object p3, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    iput-object p4, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance p2, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;

    invoke-direct {p2, p0}, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;)V

    iput-object p2, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mOnPackageVisibilityChangeListener:Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;

    iput-object p5, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mDevicePresenceMonitor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    iput-object p6, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mCompanionAppController:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    iput-object p7, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    iput-object p8, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    iput-object p9, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final disassociate(ILjava/lang/String;)V
    .locals 12

    const-string v0, "CDM_DisassociationProcessor"

    const-string v1, "Disassociating id=["

    const-string/jumbo v2, "]..."

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3, p1}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-static {v5, v6}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    new-instance v6, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v2, v1}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;Ljava/lang/String;I)V

    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x64

    if-gt v6, v7, :cond_1

    if-eqz v3, :cond_1

    if-nez v5, :cond_1

    const-string p2, "CDM_DisassociationProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot disassociate id=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "] now - process is visible. Start listening to package importance..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {p1, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {p1, v4}, Landroid/companion/AssociationInfo$Builder;->setRevoked(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p2, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    const-string/jumbo p1, "Start listening to uid importance changes..."

    const-string p2, "CDM_DisassociationProcessor"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance p1, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v4}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;I)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Failed to start listening to uid importance changes."

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    iget-object v6, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v6, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(I)V

    iget-object v6, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    invoke-virtual {v6, v1, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->removeRequestsByAssociationId(II)V

    iget-object v6, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v7

    const-string v8, "Can\'t remove association id=["

    const-string v9, "CDM_AssociationStore"

    const-string/jumbo v10, "Removing association id=["

    const-string/jumbo v11, "]..."

    invoke-static {v7, v10, v11, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_1
    iget-object v10, v6, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/companion/AssociationInfo;

    if-nez v10, :cond_2

    const-string p2, "CDM_AssociationStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "]. It does not exist."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v7

    iget-object v8, v6, Lcom/android/server/companion/association/AssociationStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;

    invoke-direct {v11, v6, v7}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/companion/association/AssociationStore;I)V

    invoke-interface {v8, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v7, v6, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, p2}, Lcom/android/server/companion/association/AssociationDiskStore;->writeLastRemovedAssociation(Landroid/companion/AssociationInfo;Ljava/lang/String;)V

    const-string p2, "CDM_AssociationStore"

    const-string v7, "Done removing association."

    invoke-static {p2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object p2

    sget-object v7, Lcom/android/server/companion/utils/MetricUtils;->METRIC_DEVICE_PROFILE:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v7, 0x1c3

    const/4 v8, 0x2

    invoke-static {v7, v8, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v6, v4, v10}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    :cond_3
    :goto_1
    new-instance p2, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v1, v2, v0}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;ILjava/lang/String;Landroid/companion/AssociationInfo;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    if-nez v5, :cond_5

    if-eqz v3, :cond_5

    const-string/jumbo p2, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object v8, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v9

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v5

    sget-object p2, Lcom/android/server/companion/utils/RolesUtils;->NLS_PROFILES:Ljava/util/Set;

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const-class p2, Landroid/app/role/RoleManager;

    invoke-virtual {v8, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/app/role/RoleManager;

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const-string/jumbo p2, "Removing CDM role="

    const-string v3, " for userId="

    const-string v10, ", packageName="

    invoke-static {v9, p2, v5, v3, v10}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "CDM_RolesUtils"

    invoke-static {v3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;

    invoke-direct/range {v3 .. v9}, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;-><init>(Landroid/app/role/RoleManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Context;I)V

    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mDevicePresenceMonitor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {p2, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isDevicePresent(I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;)V

    invoke-static {p1, p2}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mCompanionAppController:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->unbindCompanionApp(ILjava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    :goto_4
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final removeIdleSelfManagedAssociations()V
    .locals 10

    const-string v0, "CDM_DisassociationProcessor"

    const-string/jumbo v1, "Removing idle self-managed associations."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string/jumbo v3, "debug.cdm.cdmservice.removal_time_window"

    const-wide/16 v4, -0x1

    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    sget-wide v3, Lcom/android/server/companion/association/DisassociationProcessor;->ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J

    :cond_0
    iget-object v5, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v5}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/companion/AssociationInfo;

    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()J

    move-result-wide v7

    sub-long v7, v1, v7

    cmp-long v7, v7, v3

    if-ltz v7, :cond_1

    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getId()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Removing inactive self-managed association=["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "]."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "self-idle"

    invoke-virtual {p0, v7, v6}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method
