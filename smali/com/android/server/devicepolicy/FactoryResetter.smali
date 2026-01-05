.class public final Lcom/android/server/devicepolicy/FactoryResetter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mForce:Z

.field public final mReason:Ljava/lang/String;

.field public final mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

.field public final mWipeAdoptableStorage:Z

.field public final mWipeEuicc:Z

.field public final mWipeFactoryResetProtection:Z


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    iget-object v0, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mForce:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    iget-boolean v0, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeEuicc:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    iget-boolean v0, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeAdoptableStorage:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    iget-boolean p1, p1, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeFactoryResetProtection:Z

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    return-void
.end method


# virtual methods
.method public final factoryReset()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MASTER_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/FactoryResetter;->sFactoryResetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    sget-object v0, Lcom/android/server/FactoryResetter;->sFactoryResetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->factoryResetInternalUnchecked()V

    return v3

    :cond_2
    new-instance v0, Lcom/android/server/devicepolicy/FactoryResetter$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/FactoryResetter$1;-><init>(Lcom/android/server/devicepolicy/FactoryResetter;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "FactoryResetter"

    const-string v4, "Delaying factory reset until %s confirms"

    invoke-static {v3, v4, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    invoke-interface {p0, v0}, Landroid/app/admin/DevicePolicySafetyChecker;->onFactoryReset(Lcom/android/internal/os/IResultReceiver;)V

    return v2
.end method

.method public final factoryResetInternalUnchecked()V
    .locals 10

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-boolean v6, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v7, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v8, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v9, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "factoryReset(): reason=%s, shutdown=%b, force=%b, wipeEuicc=%b, wipeAdoptableStorage=%b, wipeFRP=%b"

    const-string v2, "FactoryResetter"

    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-nez v6, :cond_1

    const-string/jumbo v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Factory reset is not allowed for this user."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v9, :cond_3

    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-class v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "Wiping factory reset protection"

    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "No need to wipe factory reset protection"

    invoke-static {v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    const-string/jumbo v0, "Wiping adoptable storage"

    invoke-static {v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    :cond_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, v6, v7}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FactoryResetter["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "no_reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "reason=\'"

    const-string v3, "\'"

    invoke-static {v0, v2, v1, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v1, :cond_1

    const-string v1, ",hasSafetyChecker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    if-eqz v1, :cond_2

    const-string v1, ",force"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    if-eqz v1, :cond_3

    const-string v1, ",wipeEuicc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    if-eqz v1, :cond_4

    const-string v1, ",wipeAdoptableStorage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    if-eqz p0, :cond_5

    const-string p0, ",ipeFactoryResetProtection"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
