.class public final Lcom/android/server/security/intrusiondetection/SecurityLogSource;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/security/intrusiondetection/DataSource;


# instance fields
.field public mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

.field public mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public mEventCallback:Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;


# virtual methods
.method public final disable()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->setInternalEventsCallback(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isAuditLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->setAuditLogEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final enable()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isAuditLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->setAuditLogEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mEventCallback:Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->setInternalEventsCallback(Ljava/util/function/Consumer;)V

    return-void
.end method
