.class public abstract Lcom/android/server/asks/AuthorizedTokenManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static checkParentsAuthorizedToken(Landroid/content/Context;Lcom/android/server/asks/AuthorizedToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/asks/AuthorizedTokenRevoke$TokenRevokeResult;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "PackageInformation_Token"

    iget-object v0, p1, Lcom/android/server/asks/AuthorizedToken;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/asks/AuthorizedToken;->createData:Ljava/lang/String;

    invoke-static {v0, v2, p6}, Lcom/android/server/asks/AuthorizedTokenManager;->checkTokenRevoke(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/asks/AuthorizedTokenRevoke$TokenRevokeResult;)Z

    move-result p6

    if-eqz p6, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string/jumbo p6, "[Token] getParentsSignature() size"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x8000000

    invoke-virtual {v0, p2, v3, p5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p6, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p6}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p6

    array-length p6, p6

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v1, p6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p6, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p6}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " Abnormal case : getParentsSignature() "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v1, p6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object p6, v2

    :goto_0
    const-string/jumbo v0, "[Token] getParentsPermission size() "

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x1000

    invoke-virtual {p0, p2, v3, p5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p5, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p5, :cond_2

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    move-object p0, p1

    move-object p1, p2

    move-object p5, p3

    move-object p2, p6

    move-object p3, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, " Abnormal case : getParentsPermission() "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_2
    invoke-static/range {p0 .. p5}, Lcom/android/server/asks/AuthorizedTokenManager;->checkTokenConditions(Lcom/android/server/asks/AuthorizedToken;Ljava/lang/String;[Landroid/content/pm/Signature;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "[Token] check parents token :  conditions success"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/asks/AuthorizedToken;->installAuthority:Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_3
    const-string/jumbo p0, "safeInstall"

    return-object p0
.end method

.method public static checkTokenConditions(Lcom/android/server/asks/AuthorizedToken;Ljava/lang/String;[Landroid/content/pm/Signature;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    const-string/jumbo v6, "PackageInformation_Token"

    if-eqz v4, :cond_0

    iget-object v7, v1, Lcom/android/server/asks/AuthorizedToken;->digest:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v0, "[Token] App hash not matched : false"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    const-string/jumbo v4, "[Token] App hash does not exist : true"

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, v1, Lcom/android/server/asks/AuthorizedToken;->packageName:Ljava/lang/String;

    move-object/from16 v7, p1

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v0, :cond_d

    :try_start_0
    array-length v4, v0

    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_d

    aget-object v8, v0, v7

    iget-object v9, v1, Lcom/android/server/asks/AuthorizedToken;->cert:Ljava/lang/String;

    const-string/jumbo v10, "SHA-256"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v8, :cond_2

    const-string/jumbo v8, "null"

    move/from16 v16, v5

    goto :goto_5

    :cond_2
    array-length v12, v8

    move v13, v5

    :goto_1
    if-ge v13, v12, :cond_5

    aget-byte v14, v8, v13
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    ushr-int/lit8 v15, v14, 0x4

    and-int/lit8 v15, v15, 0xf

    move/from16 v16, v5

    :goto_2
    if-ltz v15, :cond_3

    const/16 v11, 0x9

    if-gt v15, v11, :cond_3

    add-int/lit8 v15, v15, 0x30

    :goto_3
    int-to-char v11, v15

    goto :goto_4

    :cond_3
    add-int/lit8 v15, v15, 0x57

    goto :goto_3

    :goto_4
    :try_start_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v15, v14, 0xf

    add-int/lit8 v11, v5, 0x1

    const/4 v0, 0x1

    if-lt v5, v0, :cond_4

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    move/from16 v5, v16

    goto :goto_1

    :cond_4
    move-object/from16 v0, p2

    move v5, v11

    goto :goto_2

    :cond_5
    move/from16 v16, v5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "signature is same"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, v1, Lcom/android/server/asks/AuthorizedToken;->permissions:Ljava/util/List;

    const-string/jumbo v4, "[Token] expired date does not matched : false"

    if-eqz v0, :cond_a

    :try_start_2
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    array-length v5, v2

    move/from16 v7, v16

    :goto_6
    if-ge v7, v5, :cond_8

    aget-object v8, v2, v7

    if-eqz v8, :cond_6

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v0, "not matched permission : Token not applied"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    const-string/jumbo v0, "does not permission: not pm check"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    invoke-virtual {v1, v3}, Lcom/android/server/asks/AuthorizedToken;->checkExpiredDate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_7
    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkLimit error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v6}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_9
    const-string/jumbo v0, "[Token] Limit Condition does not matched : false"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_a
    const-string/jumbo v0, "[Token] not exist limit condition : true"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Lcom/android/server/asks/AuthorizedToken;->checkExpiredDate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7

    :goto_a
    return v0

    :cond_b
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p2

    move/from16 v5, v16

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move/from16 v16, v5

    goto :goto_b

    :cond_d
    move/from16 v16, v5

    goto :goto_c

    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Token] sigError : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Token] Signature does not matched : false "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "ro.boot.em.status"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v1, v1, Lcom/android/server/asks/AuthorizedToken;->cert:Ljava/lang/String;

    goto :goto_d

    :cond_e
    const-string v1, ""

    :goto_d
    invoke-static {v0, v1, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return v16

    :cond_f
    move/from16 v16, v5

    const-string/jumbo v0, "[Token] PackageName does not matched : false "

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v16
.end method

.method public static checkTokenRevoke(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/asks/AuthorizedTokenRevoke$TokenRevokeResult;)Z
    .locals 8

    const-string v0, "0x1"

    const-string/jumbo v1, "ro.boot.em.status"

    const-string/jumbo v2, "PackageInformation_Token"

    const-string/jumbo v3, "[Token] revoke date : "

    const-string/jumbo v4, "[Token] checking ... token revoke packageName : "

    if-eqz p2, :cond_3

    :try_start_0
    const-string/jumbo v5, "[Token] Start checking revoke"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/asks/AuthorizedTokenManager;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/asks/AuthorizedTokenManager;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pkgWithD : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p2, Lcom/android/server/asks/AuthorizedTokenRevoke$TokenRevokeResult;->tokenMap:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    iget-object v4, p2, Lcom/android/server/asks/AuthorizedTokenRevoke$TokenRevokeResult;->tokenMap:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v5, v7, :cond_2

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " create date  : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo p0, "[Token] Target : contains revoke P List"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    iget-object p1, p2, Lcom/android/server/asks/AuthorizedTokenRevoke$TokenRevokeResult;->tokenList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo p0, "[Token] Target : contains revoke PD List"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static getSHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string/jumbo p0, "null"

    return-object p0

    :cond_0
    array-length v1, p0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-byte v4, p0, v3

    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    move v6, v2

    :goto_1
    if-ltz v5, :cond_1

    const/16 v7, 0x9

    if-gt v5, v7, :cond_1

    add-int/lit8 v5, v5, 0x30

    :goto_2
    int-to-char v5, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x57

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v4, 0xf

    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x1

    if-lt v6, v8, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseXML(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/asks/AuthorizedToken;
    .locals 8

    new-instance v0, Lcom/android/server/asks/AuthorizedToken;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->digest:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->cert:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->policy:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->installAuthority:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/asks/AuthorizedToken;->permissions:Ljava/util/List;

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->createData:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->expireDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->country:Ljava/lang/String;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    move-object v3, v2

    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_d

    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    const-string/jumbo v6, "PEM"

    if-eq v1, v5, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v4, :cond_c

    :try_start_1
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->permissions:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->permissions:Ljava/util/List;

    :cond_1
    iget-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->permissions:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v1, "name"

    if-eqz v4, :cond_3

    :try_start_2
    const-string/jumbo v5, "PACKAGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v5, "value"

    if-eqz v4, :cond_4

    :try_start_3
    const-string v7, "DIGEST"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->digest:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    if-eqz v4, :cond_5

    const-string v7, "CERT"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->cert:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    if-eqz v4, :cond_6

    const-string/jumbo v7, "POLICY"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->policy:Ljava/lang/String;

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    const-string v7, "INSTALL_AUTHORITY"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->installAuthority:Ljava/lang/String;

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_8

    const-string v7, "LIMIT"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_1

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_9
    if-eqz v4, :cond_a

    const-string v1, "CREATE_DATE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->createData:Ljava/lang/String;

    goto :goto_1

    :cond_a
    if-eqz v4, :cond_b

    const-string v1, "EXPIRE_DATE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->expireDate:Ljava/lang/String;

    goto :goto_1

    :cond_b
    if-eqz v4, :cond_c

    const-string v1, "COUNTRY"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/asks/AuthorizedToken;->country:Ljava/lang/String;

    :cond_c
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "parseXML : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PackageInformation_Token"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_d
    return-object v0
.end method
