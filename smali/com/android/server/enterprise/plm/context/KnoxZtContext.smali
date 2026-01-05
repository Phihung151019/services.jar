.class public final Lcom/android/server/enterprise/plm/context/KnoxZtContext;
.super Lcom/android/server/enterprise/plm/context/ProcessContext;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    const-string p0, "KnoxZtService"

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "com.samsung.android.knox.zt.framework"

    return-object p0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "com.samsung.android.knox.zt.framework.core.KnoxZtService"

    return-object p0
.end method

.method public final needToKeepProcessAlive(Lcom/android/server/enterprise/plm/ProcessStateTracker;)Z
    .locals 4

    iget-object p0, p1, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result p0

    iget-object v1, p1, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    iget-object v1, v1, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isKlmActivated()Z

    move-result p1

    const-string/jumbo v1, "is device managed: "

    const-string v2, ", is device organization owned with managed profile: "

    const-string v3, ", is klm activated: "

    invoke-static {v1, p0, v2, v0, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KnoxZtContext"

    invoke-static {v2, v1, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-nez p0, :cond_1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string/jumbo p1, "keep alive "

    invoke-static {p1, v2, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method
