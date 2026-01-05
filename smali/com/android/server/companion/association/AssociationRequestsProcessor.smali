.class public final Lcom/android/server/companion/association/AssociationRequestsProcessor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEVICE_PROFILES_WITH_REQUIRED_CONFIRMATION:Ljava/util/Set;


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mCompanionAssociationActivity:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public final mOnRequestConfirmationReceiver:Lcom/android/server/companion/association/AssociationRequestsProcessor$1;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/ArraySet;

    const-string/jumbo v1, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    const-string/jumbo v2, "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->DEVICE_PROFILES_WITH_REQUIRED_CONFIRMATION:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/companion/association/AssociationRequestsProcessor$1;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/association/AssociationRequestsProcessor$1;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mOnRequestConfirmationReceiver:Lcom/android/server/companion/association/AssociationRequestsProcessor$1;

    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object p3, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    const p2, 0x104030d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".CompanionAssociationActivity"

    invoke-static {p1, p2}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mCompanionAssociationActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public static sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, p0}, Landroid/companion/IAssociationRequestCallback;->onAssociationCreated(Landroid/companion/AssociationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz p2, :cond_3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "association"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    if-eqz p1, :cond_2

    :try_start_1
    const-string v0, "Association doesn\'t exist."

    invoke-interface {p1, p0, v0}, Landroid/companion/IAssociationRequestCallback;->onFailure(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    if-eqz p2, :cond_3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/graphics/drawable/Icon;Z)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    iget-object v3, v0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    iget-object v4, v3, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v3, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v6, v3, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v8, v6, 0x1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    new-instance v7, Landroid/companion/AssociationInfo;

    const/16 v18, 0x0

    const-wide v21, 0x7fffffffffffffffL

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v24, p10

    invoke-direct/range {v7 .. v25}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;)V

    if-eqz p11, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Created association for "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and userId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", packageName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " without granting role"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CDM_AssociationRequestsProcessor"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v7}, Lcom/android/server/companion/association/AssociationStore;->addAssociation(Landroid/companion/AssociationInfo;)V

    invoke-static {v7, v1, v2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->maybeGrantRoleAndStoreAssociation(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :goto_0
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final maybeGrantRoleAndStoreAssociation(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .locals 7

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/android/server/companion/utils/RolesUtils;->ROLELESS_DEVICE_PROFILES:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;Ljava/lang/String;Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    invoke-static {v6, v3, v0}, Lcom/android/server/companion/utils/RolesUtils;->addRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;Ljava/util/function/Consumer;)V

    return-void

    :goto_0
    iget-object p0, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p0, v3}, Lcom/android/server/companion/association/AssociationStore;->addAssociation(Landroid/companion/AssociationInfo;)V

    invoke-static {v3, v4, v5}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    return-void
.end method
