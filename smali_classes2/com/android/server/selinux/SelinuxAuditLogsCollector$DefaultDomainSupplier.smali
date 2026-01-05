.class public final Lcom/android/server/selinux/SelinuxAuditLogsCollector$DefaultDomainSupplier;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Supplier;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    sget p0, Lcom/android/server/selinux/SelinuxAuditLogsService;->AUDITD_TAG_CODE:I

    const-string/jumbo p0, "no_match^"

    const-string/jumbo v0, "adservices"

    const-string/jumbo v1, "selinux_audit_domain"

    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
