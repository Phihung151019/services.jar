.class public final Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string/jumbo p0, "TestCertHelper"

    const-string/jumbo v0, "rootCertificateAlias is null or empty - use secure default value"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "GoogleCloudKeyVaultServiceV1"

    return-object p0
.end method

.method public static getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 2

    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "TEST_ONLY_INSECURE_CERTIFICATE_ALIAS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getTestOnlyInsecureCertificate()Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 v0, 0x1c

    const-string/jumbo v1, "The provided root certificate alias is invalid"

    invoke-direct {p0, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static getValidationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    const-string/jumbo v0, "TEST_ONLY_INSECURE_CERTIFICATE_ALIAS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/util/Date;

    const/16 v0, 0x1e

    const/16 v1, 0x77

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Ljava/util/Date;-><init>(III)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
