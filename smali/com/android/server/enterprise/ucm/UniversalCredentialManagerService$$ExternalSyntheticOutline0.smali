.class public abstract synthetic Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p0

    return p0
.end method
