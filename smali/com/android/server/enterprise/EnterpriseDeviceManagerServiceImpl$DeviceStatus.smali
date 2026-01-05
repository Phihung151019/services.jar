.class public final Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public isKCClientActive:I

.field public isKSPActive:I

.field public isUserTypeAppSeparationExists:I

.field public isUserTypeSecureFolderExists:I

.field public mAerSupported:I

.field public mDAs:Landroid/util/ArrayMap;

.field public mDAsBundle:[Landroid/os/Bundle;

.field public mDPMRoleHolders:Landroid/util/ArrayMap;

.field public mDPMRoleHoldersBundle:[Landroid/os/Bundle;

.field public mDelegatedAdminContainerType:I

.field public mDelegatedAdmins:Landroid/util/ArrayMap;

.field public mDelegatedAdminsBundle:[Landroid/os/Bundle;

.field public mDeviceStatusBundle:Landroid/os/Bundle;

.field public mInternalKnoxAdminCount:I

.field public mKGClientState:Ljava/lang/String;

.field public mKnoxDACount:I

.field public mKnoxDAs:Landroid/util/ArrayMap;

.field public mKnoxDAsBundle:[Landroid/os/Bundle;

.field public mKnoxInternalAdmins:Landroid/util/ArrayMap;

.field public mKnoxInternalAdminsBundle:[Landroid/os/Bundle;

.field public mOwnerPackageName:Ljava/lang/String;

.field public mOwnerType:I

.field public mUserCount:I


# direct methods
.method public static logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;

    const-string v1, "KNOX_CONTAINER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V

    return-void
.end method


# virtual methods
.method public final logData()V
    .locals 5

    const-string v0, "DEVICE_STATUS"

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminsBundle:[Landroid/os/Bundle;

    array-length v3, v2

    const-string v4, "DEVICE_STATUS_ADMIN_INFO"

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHoldersBundle:[Landroid/os/Bundle;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAsBundle:[Landroid/os/Bundle;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAsBundle:[Landroid/os/Bundle;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdminsBundle:[Landroid/os/Bundle;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-object v1, v1, v0

    invoke-static {v1, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public final writeToBundle()V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "OwnerType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and its packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EDM_KnoxAnalytics"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeSecureFolderExists:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string/jumbo v0, "SecureFolder exists"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SecureFolder does not exist"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeAppSeparationExists:I

    if-ne v0, v2, :cond_2

    const-string/jumbo v0, "SeparatedApps exists"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "SeparatedApps does not exist"

    :goto_1
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Knox licensed admin count: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDACount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Knox internal admin count: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mInternalKnoxAdminCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "ucnt"

    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mUserCount:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    const-string v1, "KLAcnt"

    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDACount:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "iklacnt"

    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mInternalKnoxAdminCount:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "ot"

    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerPackageName:Ljava/lang/String;

    const-string/jumbo v3, "dapn"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "sa"

    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeAppSeparationExists:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "sf"

    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeSecureFolderExists:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "kg"

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKGClientState:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "kc"

    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKCClientActive:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "ksp"

    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKSPActive:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "aer"

    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mAerSupported:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminsBundle:[Landroid/os/Bundle;

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const-string/jumbo v5, "at"

    const-string/jumbo v6, "cTp"

    if-ge v1, v4, :cond_5

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminContainerType:I

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKADelegationMapping:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move v6, v0

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    sget-object v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKADelegationMapping:Ljava/util/HashMap;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminsBundle:[Landroid/os/Bundle;

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHoldersBundle:[Landroid/os/Bundle;

    move v1, v0

    :goto_5
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHoldersBundle:[Landroid/os/Bundle;

    aput-object v4, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_6

    :cond_7
    new-array v1, v4, [Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAsBundle:[Landroid/os/Bundle;

    move v1, v0

    move v4, v1

    :goto_7
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v1, v7, :cond_9

    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v10, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v10, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAsBundle:[Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v11, v4, 0x1

    :try_start_1
    aput-object v10, v9, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v11

    goto :goto_8

    :catch_0
    move-exception v4

    goto :goto_9

    :catch_1
    move-exception v7

    move v11, v4

    move-object v4, v7

    :goto_9
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v11

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_a

    :cond_a
    new-array v1, v4, [Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAsBundle:[Landroid/os/Bundle;

    move v1, v0

    move v4, v1

    :goto_b
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v1, v7, :cond_c

    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    :try_start_2
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v11, 0x4

    invoke-virtual {v10, v5, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v10, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAsBundle:[Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v11, v4, 0x1

    :try_start_3
    aput-object v10, v9, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v4, v11

    goto :goto_c

    :catch_2
    move-exception v4

    goto :goto_d

    :catch_3
    move-exception v7

    move v11, v4

    move-object v4, v7

    :goto_d
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v11

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_c
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_e

    :cond_d
    new-array v1, v4, [Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdminsBundle:[Landroid/os/Bundle;

    move v1, v0

    move v4, v1

    :goto_f
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v1, v7, :cond_11

    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    :try_start_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v10, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v11, v9, v0

    if-eqz v11, :cond_e

    invoke-virtual {v10, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catch_4
    move-exception v7

    goto :goto_12

    :cond_e
    :goto_11
    aget-object v9, v9, v2

    if-eqz v9, :cond_f

    const-string/jumbo v11, "state"

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdminsBundle:[Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    add-int/lit8 v11, v4, 0x1

    :try_start_5
    aput-object v10, v9, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move v4, v11

    goto :goto_10

    :catch_5
    move-exception v7

    move v4, v11

    :goto_12
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_11
    return-void
.end method
