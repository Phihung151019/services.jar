.class public final Lcom/android/server/enterprise/plm/context/PeripheralContext;
.super Lcom/android/server/enterprise/plm/context/ProcessContext;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "PeripheralService"

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "com.samsung.android.peripheral.framework"

    return-object p0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "com.samsung.android.peripheral.framework.core.PeripheralService"

    return-object p0
.end method

.method public final needToKeepProcessAlive(Lcom/android/server/enterprise/plm/ProcessStateTracker;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isKlmActivated()Z

    move-result p0

    iget-object p1, p1, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    iget-boolean p1, p1, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmServiceReady:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isEdmServiceReady : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SystemStateTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "klm activated : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", edm service ready : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PeripheralContext"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

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

    invoke-static {p1, v1, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method
