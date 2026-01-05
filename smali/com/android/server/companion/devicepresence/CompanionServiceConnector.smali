.class public Lcom/android/server/companion/devicepresence/CompanionServiceConnector;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/companion/ICompanionDeviceService;",
        ">;"
    }
.end annotation


# static fields
.field public static volatile sServiceThread:Lcom/android/server/ServiceThread;


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mIsPrimary:Z

.field private mListener:Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;

.field private final mUserId:I


# direct methods
.method public constructor <init>(IILandroid/content/ComponentName;Landroid/content/Context;Z)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.companion.CompanionDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const/4 v7, 0x0

    move-object v2, p0

    move v6, p1

    move v5, p2

    move-object v3, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    iput v6, v2, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mUserId:I

    iput-object p3, v2, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    iput-boolean p5, v2, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mIsPrimary:Z

    return-void
.end method


# virtual methods
.method public final binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-static {p1}, Landroid/companion/ICompanionDeviceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;

    move-result-object p0

    return-object p0
.end method

.method public final binderDied()V
    .locals 12

    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    const-string v0, "CDM_CompanionServiceConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "binderDied() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mListener:Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;

    if-eqz v0, :cond_d

    iget v1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mUserId:I

    iget-object v2, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda0;

    iget-object v0, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mIsPrimary:Z

    const-string v4, "CDM_DevicePresenceProcessor"

    const-string/jumbo v5, "onBinderDied() u"

    const-string v6, "/"

    const-string v7, " isPrimary: "

    invoke-static {v1, v5, v6, v2, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v5, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/companion/AssociationInfo;

    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v5, "CDM_DevicePresenceProcessor"

    const-string v7, "Disable hint mode for device profile: "

    invoke-static {v7, v6, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v6, 0x12

    invoke-virtual {v5, v6, v4}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    :cond_1
    iget-object v5, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    iget-object v6, v5, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    iget-object v7, v5, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v7, v5, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    monitor-enter v7

    :try_start_1
    iget-object v5, v5, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v8, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_2
    :goto_0
    iget-object v5, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v6, v1, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v4

    move v8, v7

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/companion/AssociationInfo;

    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getId()I

    move-result v9

    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {v0, v9}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isDevicePresent(I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedSelfManagedDevices:Ljava/util/Set;

    const/4 v8, 0x5

    invoke-virtual {v0, v7, v9, v8}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    :cond_3
    iget-object v7, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {v7, v1, v2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result v8

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v7

    if-eqz v7, :cond_5

    move v8, v10

    :cond_5
    :goto_2
    move v7, v10

    goto :goto_1

    :cond_6
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v4

    :cond_7
    if-ge v6, v3, :cond_8

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v6, v6, 0x1

    check-cast v9, Lcom/android/server/companion/devicepresence/ObservableUuid;

    iget-object v9, v9, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    iget-object v11, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    check-cast v11, Ljava/util/HashSet;

    invoke-virtual {v11, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v4, v10

    :cond_8
    if-eqz v7, :cond_9

    if-nez v8, :cond_a

    :cond_9
    if-eqz v4, :cond_d

    :cond_a
    iget-object v0, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "CDM_CompanionAppBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "scheduleRebinding() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    monitor-enter v3

    :try_start_3
    iget-object v4, v0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    new-instance v5, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v4, :cond_b

    const-string v0, "CDM_CompanionAppBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CompanionApplication rebinding has been scheduled, skipping "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    iget-boolean v3, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mIsPrimary:Z

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    monitor-enter v3

    :try_start_4
    iget-object v4, v0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    new-instance v5, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_3

    :catchall_2
    move-exception p0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_c
    :goto_3
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2, p0}, Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/devicepresence/CompanionAppBinder;ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_3
    move-exception p0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :cond_d
    return-void
.end method

.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getJobHandler()Landroid/os/Handler;
    .locals 3

    sget-object p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    if-nez p0, :cond_1

    const-class p0, Lcom/android/server/companion/CompanionDeviceManagerService;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "companion-device-service-connector"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    sget-object p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public final isPrimary()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mIsPrimary:Z

    return p0
.end method

.method public final onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 1

    check-cast p1, Landroid/companion/ICompanionDeviceService;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onServiceConnectionStatusChanged() "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " connected="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_CompanionServiceConnector"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setListener(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mListener:Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;

    return-void
.end method
