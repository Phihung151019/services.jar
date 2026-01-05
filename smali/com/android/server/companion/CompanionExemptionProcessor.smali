.class public final Lcom/android/server/companion/CompanionExemptionProcessor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field public final mPowerExemptionManager:Landroid/os/PowerExemptionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerExemptionManager;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/companion/association/AssociationStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    iput-object p3, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAppOpsManager:Landroid/app/AppOpsManager;

    iput-object p4, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    iput-object p5, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p6, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iput-object p7, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    new-instance p1, Lcom/android/server/companion/CompanionExemptionProcessor$1;

    invoke-direct {p1, p0}, Lcom/android/server/companion/CompanionExemptionProcessor$1;-><init>(Lcom/android/server/companion/CompanionExemptionProcessor;)V

    invoke-virtual {p7, p1}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    return-void
.end method


# virtual methods
.method public final exemptPackage(ILjava/lang/String;Z)V
    .locals 3

    const-string v0, "Exempting package ["

    const-string/jumbo v1, "]..."

    const-string v2, "CDM_CompanionExemptionProcessor"

    invoke-static {v0, p2, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide/16 v1, 0x5000

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2, v1, p1}, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    new-instance v0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionExemptionProcessor;ILandroid/content/pm/PackageInfo;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final updateAtm(ILjava/util/List;)V
    .locals 5

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    iget-object v2, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz p2, :cond_2

    check-cast p2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v1, p2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz p0, :cond_3

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManagerInternal;->setCompanionAppUids(ILjava/util/Set;)V

    :cond_3
    return-void
.end method

.method public final updateAutoRevokeExemption(ILjava/lang/String;Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x61

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Error while granting auto revoke exemption for "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CDM_CompanionExemptionProcessor"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
