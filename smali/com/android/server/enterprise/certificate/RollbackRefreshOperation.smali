.class public final Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

.field public final mContext:Landroid/content/Context;

.field public final mKeyStoreLock:Ljava/lang/Object;

.field public final mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public mOperation:I

.field public final mPendingKeystoreAction:Ljava/util/Set;

.field public final mPriority:I

.field public mUserId:I

.field public final mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;


# direct methods
.method public static -$$Nest$smsplitCertTypeAlias(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const-string v0, "CACERT_KE_"

    const-string v1, "CACERT_"

    const-string v2, "CACERT_CE_"

    const-string/jumbo v3, "USRCERT_"

    const-string/jumbo v4, "USRPKEY_"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPriority:I

    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-direct {v0, p2}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    iput-object p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "user"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final execute(II)V
    .locals 4

    iput p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mOperation:I

    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    iget p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPriority:I

    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    iget p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;Ljava/util/List;Ljava/util/List;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Integer;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    :goto_1
    if-nez p1, :cond_2

    goto :goto_5

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    if-nez v1, :cond_3

    move-object p2, v0

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    iget v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_3
    new-instance v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;[Ljava/lang/Integer;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    iget-object v1, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-boolean v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    invoke-virtual {v1, p2, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V

    goto :goto_4

    :cond_6
    :goto_5
    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p0, v5, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-string/jumbo p2, "systemDisabledList"

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string/jumbo p2, "systemPrevDisabledList"

    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo p2, "userRemovedList"

    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(ILjava/util/List;)Ljava/util/Map;

    move-result-object v5

    new-instance v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    move-object p0, v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p0, v5, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-string/jumbo p2, "systemDisabledList"

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string/jumbo p2, "systemPrevDisabledList"

    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo p2, "userRemovedList"

    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    move-object p0, v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;
    .locals 10

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0x3f2

    :goto_0
    invoke-virtual {p4, p2, p1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    invoke-virtual {p4, p2, v4, p1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->toCertificates([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v9, 0x3

    invoke-virtual {v8, v7, v9, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "CACERT_"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p4, p2, v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->isCertificateEntry(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "CACERT_CE_"

    goto :goto_3

    :cond_5
    const-string v8, "CACERT_KE_"

    goto :goto_3

    :cond_6
    move-object v8, p1

    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "_#_"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    :goto_4
    return-object v1
.end method

.method public final refreshNativeKeyStoreAsUser(II)V
    .locals 13

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string/jumbo v2, "nativeRemovedList_wifi"

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const-string/jumbo v2, "nativeRemovedList"

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v3, p2, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-ne p1, v0, :cond_2

    move v4, p2

    goto :goto_1

    :cond_2
    const/16 v4, 0x3f2

    :goto_1
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(ILjava/util/List;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v5

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_3

    :try_start_0
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    const-string v1, "CACERT_"

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;

    move-result-object v1

    move-object v6, v3

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "USRCERT_"

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(ILjava/util/Map;)V

    new-instance v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v9, 0x1

    move-object v8, p0

    move v10, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v7, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(ILjava/lang/String;Ljava/util/Collection;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final rollbackNativeKeyStoreAsUser(II)V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "nativeRemovedList_wifi"

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const-string/jumbo v0, "nativeRemovedList"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v2, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-ne p1, v1, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    const/16 v1, 0x3f2

    :goto_1
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(ILjava/util/List;)Ljava/util/Map;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_3

    const/4 v9, 0x3

    invoke-virtual {v2, v8, v9, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v11, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    new-instance v6, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v7, p0

    move v9, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {v4, v1, v5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(ILjava/util/List;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v2, p2, v0, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(ILjava/lang/String;Ljava/util/Collection;)V

    return-void
.end method
