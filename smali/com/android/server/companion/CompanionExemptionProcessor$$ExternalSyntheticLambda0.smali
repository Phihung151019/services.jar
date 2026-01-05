.class public final synthetic Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionExemptionProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/pm/PackageInfo;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionExemptionProcessor;ILandroid/content/pm/PackageInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/CompanionExemptionProcessor;

    iput p2, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/PackageInfo;

    iput-boolean p4, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/CompanionExemptionProcessor;

    iget v1, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/PackageInfo;

    iget-boolean p0, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$3:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Update SpAccess:"

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string/jumbo v5, "android.permission.RUN_IN_BACKGROUND"

    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_2

    const-string/jumbo v5, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v7

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    :goto_1
    const-string v5, "CDM_CompanionExemptionProcessor"

    if-eqz v4, :cond_3

    if-eqz p0, :cond_3

    iget-object v3, v0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/PowerExemptionManager;->addToPermanentAllowList(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string/jumbo v4, "deviceidle"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v4

    :try_start_0
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v8}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Unrestricted:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move v4, v7

    :catch_1
    const-string/jumbo v3, "RemoteException when calling isPowerSaveWhitelistApp"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez v4, :cond_4

    :try_start_2
    iget-object v3, v0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/PowerExemptionManager;->removeFromPermanentAllowList(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v8, " can\'t be removed from power save allowlist. It might be due to the package being allowlisted by the system."

    invoke-static {v3, v4, v8, v5}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget-object v3, v0, Lcom/android/server/companion/CompanionExemptionProcessor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    :try_start_3
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.USE_DATA_IN_BACKGROUND"

    const-string/jumbo v9, "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND"

    invoke-static {v4, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v4, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v7, v6

    :cond_6
    const/4 v4, 0x4

    if-eqz v7, :cond_7

    if-eqz p0, :cond_7

    iget-object p0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, p0, v4}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    goto :goto_5

    :catch_3
    move-exception p0

    goto :goto_4

    :cond_7
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, p0, v4}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v3, v1, p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v6

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/companion/CompanionExemptionProcessor;->updateAutoRevokeExemption(ILjava/lang/String;Z)V

    :goto_6
    return-void
.end method
