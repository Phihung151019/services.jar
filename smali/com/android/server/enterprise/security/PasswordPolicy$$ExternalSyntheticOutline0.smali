.class public abstract synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM$28()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method
