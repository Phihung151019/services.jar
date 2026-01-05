.class public final Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mConnection:Landroid/security/KeyChain$KeyChainConnection;

.field public final mContext:Landroid/content/Context;

.field public mDpmsService:Landroid/app/admin/IDevicePolicyManager;

.field public mService:Landroid/security/IKeyChainService;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mDpmsService:Landroid/app/admin/IDevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    return-void
.end method


# virtual methods
.method public final connect()Z
    .locals 5

    const-string v0, "CertificateUtil"

    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    invoke-static {v2, v3}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    const-string/jumbo v2, "device_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mDpmsService:Landroid/app/admin/IDevicePolicyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to connect to KeyChainService for user "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    return v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error binding KeyChain. Is KeyChainService running for user "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    return v1
.end method

.method public final contains(ILjava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_0

    const-string p0, "Aborting contains operation"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, p2, p1}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error in KeyChainService.contains for alias "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final deleteEntry(ILjava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_0

    const-string p0, "Aborting deleteEntry operation"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, p2, p1}, Landroid/security/IKeyChainService;->deleteEntry(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error in KeyChainService.deleteEntry for alias "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CertificateUtil"

    const-string v1, "Error disconnecting from KeyChain!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    :cond_0
    return-void
.end method

.method public final get(ILjava/lang/String;Ljava/lang/String;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_0

    const-string p0, "Aborting get operation"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, p2, p3, p1}, Landroid/security/IKeyChainService;->getCertificateSystem(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Error in KeyChainService.getCertificateSystem for alias "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final installCaCertificate([B)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_0

    const-string p0, "Aborting installCaCertificate operation"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {v0, p1}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mDpmsService:Landroid/app/admin/IDevicePolicyManager;

    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    const/4 v3, 0x1

    invoke-interface {v0, p1, p0, v3}, Landroid/app/admin/IDevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "Error in KeyChainService.installCaCertificate"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final isCertificateEntry(ILjava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_0

    const-string p0, "Aborting isCertificateEntry operation."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, p2, p1}, Landroid/security/IKeyChainService;->isCertificateEntry(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error in KeyChainService.isCertificateEntry for alias "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final listAliases(ILjava/lang/String;)[Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_0

    const-string p0, "Aborting listAliases operation"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, p2, p1}, Landroid/security/IKeyChainService;->listAliases(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error in KeyChainService.listAliases for keystore "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final put(Ljava/lang/String;I[B[B[B)Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_0

    const-string p0, "Aborting put operation."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, p1

    move v8, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_1
    invoke-interface/range {v3 .. v8}, Landroid/security/IKeyChainService;->installKeyPair([B[B[BLjava/lang/String;I)Z

    move-result p1

    if-eqz v4, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, v7, p2}, Landroid/security/IKeyChainService;->setUserSelectable(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :cond_1
    return p1

    :catch_1
    move-exception v0

    move-object v7, p1

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error in KeyChainService.installKeyPair for alias "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final updateKeyPair(I[B[BLjava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_0

    const-string p0, "Aborting updateKeyPair operation."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, p4, p2, p3, p1}, Landroid/security/IKeyChainService;->updateKeyPair(Ljava/lang/String;[B[BI)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error in KeyChainService.updateKeyPair for alias "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
