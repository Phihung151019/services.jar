.class public final Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAppOp:I

.field public final mAppOpAllowed:Z

.field public final mPermission:Ljava/lang/String;

.field public final mPermissionGranted:Z

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    iput-object p3, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p3, v3, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p3

    if-nez p3, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v2

    :goto_0
    iput-boolean p3, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    :goto_1
    if-ne p4, v3, :cond_2

    iput-boolean v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    return-void

    :cond_2
    iget-object p3, p1, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p3, p3, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object p1, p1, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p1, p1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    array-length v0, p3

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_4

    aget-object v4, p3, v3

    :try_start_0
    invoke-interface {p1, p4, p2, v4}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    iput-boolean v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iput-boolean v2, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    :goto_3
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    iget v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    iget v2, p1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    iget v2, p1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UidGrantedPermissionState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "="

    if-nez v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, -0x1

    iget v4, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    if-eq v4, v1, :cond_2

    if-nez v2, :cond_1

    const-string v1, ","

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string/jumbo p0, "}"

    invoke-static {v0, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
