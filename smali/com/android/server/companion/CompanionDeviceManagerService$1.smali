.class public final Lcom/android/server/companion/CompanionDeviceManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 4

    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    iget-object p2, p2, Lcom/android/server/companion/CompanionDeviceManagerService;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    iget-object v0, p2, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    iget-object v1, v0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v3}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;II)V

    invoke-static {v0, v2}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CDM_BackupRestoreProcessor"

    const-string v1, "Found pending associations for package=["

    const-string/jumbo v2, "]. Restoring..."

    invoke-static {v1, p1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/AssociationInfo;

    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v0, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/companion/AssociationInfo$Builder;->setPending(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/companion/BackupRestoreProcessor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v0, p1}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/BackupRestoreProcessor;Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/companion/utils/RolesUtils;->addRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onPackageDataCleared(Ljava/lang/String;I)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    invoke-static {p2, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monPackageRemoveOrDataClearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V

    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    iget-object v1, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/companion/CompanionExemptionProcessor;->exemptPackage(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    invoke-static {p2, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monPackageRemoveOrDataClearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V

    return-void
.end method
