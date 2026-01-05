.class public final Lcom/android/server/asks/UnknownStore;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public BASE_CODE_PATH:Ljava/lang/String;

.field public KEY_VALUE:Ljava/lang/String;

.field public PKGNAME:Ljava/lang/String;

.field public PKGSIGHASH:Ljava/lang/String;

.field public SIGHASH:Ljava/lang/String;

.field public blockPermGroup:Ljava/util/ArrayList;

.field public blockPermissions:Ljava/util/HashMap;

.field public certPolicies:Ljava/util/HashMap;

.field public defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

.field public exceptPkgName:Ljava/util/ArrayList;

.field public executeBlockPkgName:Ljava/util/ArrayList;

.field public regexDomainRule:Ljava/util/ArrayList;

.field public regexPackageRule:Ljava/util/ArrayList;

.field public tagNameList:Ljava/util/ArrayList;

.field public unknownAppsList:Ljava/util/HashMap;

.field public warningPermGroup:Ljava/util/ArrayList;

.field public warningPermissions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->KEY_VALUE:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->PKGNAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->SIGHASH:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->PKGSIGHASH:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->BASE_CODE_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    return-void
.end method

.method public static isDevDevice()Z
    .locals 2

    const-string/jumbo v0, "ro.boot.em.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final addCertPolicy(Ljava/lang/String;IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    const-string v12, "ALL"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/16 v14, 0x1f8

    const/16 v15, 0x1f4

    if-eqz v13, :cond_d

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-nez v1, :cond_1d

    new-instance v1, Lcom/android/server/asks/PKGINFO;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-ne v2, v15, :cond_0

    const/16 v1, 0x1f9

    goto :goto_0

    :cond_0
    if-ne v2, v14, :cond_2

    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v1, v2

    :goto_0
    if-ne v9, v15, :cond_3

    move v9, v15

    goto :goto_1

    :cond_3
    const/16 v2, 0x1f7

    if-ne v9, v2, :cond_4

    const/16 v9, 0x1f7

    goto :goto_1

    :cond_4
    const/16 v2, 0x1f6

    if-ne v9, v2, :cond_5

    const/16 v9, 0x1f6

    :cond_5
    :goto_1
    const/16 v2, 0x1f5

    if-ne v6, v15, :cond_6

    move v6, v2

    :cond_6
    if-ne v7, v15, :cond_7

    move v7, v2

    :cond_7
    if-ne v3, v15, :cond_8

    const/4 v2, 0x0

    move v3, v2

    :cond_8
    if-nez v4, :cond_a

    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    if-nez v2, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    :cond_9
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    if-nez v2, :cond_b

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    :cond_b
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    move-object/from16 v5, p9

    invoke-virtual {v2, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iput v4, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    iput v1, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iput v3, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    iput v6, v0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iput v7, v0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    iput v9, v0, Lcom/android/server/asks/PKGINFO;->regexDomain:I

    iput-object v10, v0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    iput-object v11, v0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    return-void

    :cond_d
    iget-object v8, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-nez v8, :cond_e

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    :cond_e
    iget-object v8, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-eqz v8, :cond_1d

    new-instance v8, Lcom/android/server/asks/PKGINFO;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-eqz v13, :cond_15

    if-ne v2, v15, :cond_f

    iget v2, v13, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    goto :goto_2

    :cond_f
    if-ne v2, v14, :cond_11

    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    if-nez v13, :cond_10

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    :cond_10
    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_2
    if-ne v6, v15, :cond_12

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget v6, v6, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    :cond_12
    if-ne v7, v15, :cond_13

    iget-object v7, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget v7, v7, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    :cond_13
    if-ne v3, v15, :cond_14

    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget v3, v3, Lcom/android/server/asks/PKGINFO;->SA:I

    :cond_14
    if-ne v9, v15, :cond_15

    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget v13, v13, Lcom/android/server/asks/PKGINFO;->regexDomain:I

    :goto_3
    const/16 v14, 0x1f7

    goto :goto_4

    :cond_15
    move v13, v9

    goto :goto_3

    :goto_4
    if-ne v9, v14, :cond_17

    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    if-nez v9, :cond_16

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    :cond_16
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_17
    const/16 v9, 0x1f6

    if-ne v13, v9, :cond_19

    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    if-nez v9, :cond_18

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    :cond_18
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_5
    if-nez v4, :cond_1b

    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    if-nez v9, :cond_1a

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    :cond_1a
    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    iput v4, v8, Lcom/android/server/asks/PKGINFO;->policy:I

    iput v2, v8, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iput v3, v8, Lcom/android/server/asks/PKGINFO;->SA:I

    iput v6, v8, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iput v7, v8, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    iput v13, v8, Lcom/android/server/asks/PKGINFO;->regexDomain:I

    iput-object v10, v8, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    iput-object v11, v8, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v2, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_1c
    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method public final addPermission(Ljava/lang/String;ZIIIIIIZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    move-object/from16 v0, p10

    move/from16 v1, p11

    move-object/from16 v2, p14

    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    :cond_0
    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    :cond_1
    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    :cond_2
    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    :cond_3
    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    :cond_4
    const/4 v3, 0x1

    if-eqz p2, :cond_7

    if-eqz p9, :cond_6

    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    iget-object v4, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    sub-int/2addr p2, v3

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    goto :goto_0

    :cond_5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    goto :goto_0

    :cond_7
    if-eqz p9, :cond_9

    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_8

    iget-object v4, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    sub-int/2addr p2, v3

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    goto :goto_0

    :cond_8
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_9
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    :goto_0
    if-eqz p2, :cond_10

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    new-instance v4, Lcom/android/server/asks/PEMINFO;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput p4, v4, Lcom/android/server/asks/PEMINFO;->MIN:I

    iput p5, v4, Lcom/android/server/asks/PEMINFO;->MAX:I

    iput p3, v4, Lcom/android/server/asks/PEMINFO;->SA:I

    iput p6, v4, Lcom/android/server/asks/PEMINFO;->policy:I

    iput p7, v4, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    const/4 p3, 0x0

    iput-object p3, v4, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    move-object/from16 p3, p12

    iput-object p3, v4, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    move-object/from16 p3, p13

    iput-object p3, v4, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    if-eqz v0, :cond_f

    const/4 p3, -0x1

    if-eq v1, p3, :cond_f

    new-instance v5, Lcom/android/server/asks/MORERULES;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/asks/MORERULES;->result_moreRule_RANK:Z

    iput-boolean v6, v5, Lcom/android/server/asks/MORERULES;->result_moreRule_RandomPkg:Z

    iput-boolean v6, v5, Lcom/android/server/asks/MORERULES;->result_moreRule_Malformed:Z

    iput-object v5, v4, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iput p3, v5, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    iput-boolean v6, v5, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    iput-boolean v6, v5, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    iput-boolean v6, v5, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    const-string p3, "="

    invoke-virtual {v0, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_f

    array-length v0, p3

    const/4 v7, 0x2

    if-ne v0, v7, :cond_f

    aget-object p3, p3, v6

    const-string/jumbo v0, "\\+"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    :goto_1
    array-length v0, p3

    if-ge v6, v0, :cond_d

    aget-object v0, p3, v6

    const-string/jumbo v7, "famous"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-boolean v3, v5, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    goto :goto_2

    :cond_a
    aget-object v0, p3, v6

    const-string/jumbo v7, "randompkg"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v3, v5, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    goto :goto_2

    :cond_b
    aget-object v0, p3, v6

    const-string/jumbo v7, "malformed"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v3, v5, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    :cond_c
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_d
    iget-boolean p3, v5, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    if-nez p3, :cond_e

    iget-boolean p3, v5, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    if-nez p3, :cond_e

    iget-boolean p3, v5, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    if-eqz p3, :cond_f

    :cond_e
    iput v1, v5, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    :cond_f
    invoke-virtual {p2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p15, :cond_10

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public final addPermissionGroup(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final checkDomain(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    .locals 10

    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v0

    const-string/jumbo v1, "PackageInformationStore"

    if-eqz v0, :cond_0

    const-string v0, " checkDomain() : "

    invoke-static {v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_1

    const-string p1, "ALL"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/asks/PKGINFO;

    if-eqz p0, :cond_2

    const-string/jumbo p1, "checkPolicyWithDetail() : Target"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v5, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v6, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget-object v7, p0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_1
    const-string p0, " no"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x3

    iput v4, v3, Lcom/android/server/asks/RETVALUE;->status:I

    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const-string/jumbo v5, "PackageInformationStore"

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "checkMoreRule() : ["

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget-boolean v6, v6, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "]["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget-boolean v7, v7, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget-boolean v6, v6, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget-boolean v0, v0, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    const/4 v6, 0x1

    const/4 v7, 0x2

    const-string v9, "0x1"

    const-string/jumbo v10, "ro.boot.em.status"

    const/4 v11, 0x0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "check_moreRule_Famous ="

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget v12, v12, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    invoke-static {v0, v12, v5}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    iget-object v12, v1, Lcom/android/server/asks/UnknownStore;->SIGHASH:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/asks/UnknownStore;->PKGSIGHASH:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "check_moreRule_Famous + :"

    const-string v14, "::"

    const-string/jumbo v15, "PackageInformation_Famous"

    invoke-static {v0, v12, v14, v13, v15}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v15, "TARGET"

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "VALUE"

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Ljava/io/File;

    const-string v8, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_RANK.xml"

    invoke-direct {v15, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    const-string v16, ""

    if-eqz v8, :cond_3

    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8, v6, v11}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_3
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    goto/16 :goto_9

    :cond_4
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    invoke-interface {v15, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v17

    move-object/from16 v19, v16

    move/from16 v11, v17

    const/16 v20, 0x0

    :goto_0
    if-eq v11, v6, :cond_b

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-eq v11, v7, :cond_7

    if-eq v11, v4, :cond_6

    :cond_5
    move-object/from16 v11, v19

    move-object/from16 v4, v20

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v11, v21

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v11, v19

    move-object/from16 v6, v20

    invoke-virtual {v14, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_4

    :cond_7
    move-object/from16 v11, v19

    move-object/from16 v4, v20

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    invoke-interface {v15, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-interface {v15, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_8
    move-object v4, v11

    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v7, 0x0

    invoke-interface {v15, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    if-eqz v4, :cond_a

    invoke-interface {v15, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    move-object v6, v4

    move-object v4, v11

    :goto_3
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    goto :goto_0

    :cond_b
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_8

    :goto_4
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_6
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_9

    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :goto_8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_9
    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_a
    const/4 v1, 0x3

    goto :goto_b

    :cond_c
    const-string/jumbo v0, "SIG"

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_a

    :cond_d
    const-string/jumbo v0, "SIGHASH"

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_a

    :goto_b
    iput v1, v3, Lcom/android/server/asks/RETVALUE;->status:I

    goto/16 :goto_17

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "It is target of rank. "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_f
    move-object/from16 v4, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/asks/MORERULES;->result_moreRule_RANK:Z

    const/4 v7, 0x0

    iput v7, v3, Lcom/android/server/asks/RETVALUE;->status:I

    :cond_10
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget-boolean v0, v0, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "check_moreRule_RandomPkg"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    invoke-static {v0, v4, v5}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_11
    iget-object v0, v1, Lcom/android/server/asks/UnknownStore;->PKGNAME:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "check_moreRule_RandomPkg + :"

    const-string/jumbo v6, "PackageInformation_RandomPkg"

    invoke-static {v4, v0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    if-eqz v0, :cond_16

    const-string/jumbo v4, "\\."

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_c
    array-length v7, v0

    if-ge v4, v7, :cond_15

    aget-object v7, v0, v4

    invoke-static {v7}, Lcom/android/server/asks/MoreRuleRandomPkg;->isRandom(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    add-int/lit8 v6, v6, 0x1

    :cond_13
    const/4 v7, 0x1

    if-ne v6, v7, :cond_14

    goto :goto_d

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_15
    const/4 v7, 0x1

    :goto_d
    if-eq v6, v7, :cond_17

    array-length v0, v0

    if-ne v6, v0, :cond_16

    goto :goto_e

    :cond_16
    const/4 v1, 0x3

    goto :goto_f

    :cond_17
    :goto_e
    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "It is target of randomPkg. "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    invoke-static {v0, v4, v5}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_18
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/asks/MORERULES;->result_moreRule_RandomPkg:Z

    const/4 v7, 0x0

    iput v7, v3, Lcom/android/server/asks/RETVALUE;->status:I

    goto :goto_10

    :goto_f
    iput v1, v3, Lcom/android/server/asks/RETVALUE;->status:I

    goto/16 :goto_17

    :cond_19
    :goto_10
    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget-boolean v0, v0, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "check_moreRule_MALFORMED:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    invoke-static {v0, v4, v5}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1a
    iget-object v0, v1, Lcom/android/server/asks/UnknownStore;->BASE_CODE_PATH:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/16 v18, 0x0

    aput v18, v1, v18

    const/16 v17, 0x1

    aput v18, v1, v17

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    const-string/jumbo v7, "PackageInformation_ZIP"

    if-eqz v6, :cond_20

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_15

    :cond_1b
    :try_start_5
    invoke-static {v0}, Lcom/android/server/asks/ZipAnalyzerUtil;->findEOCDOffset(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9, v0}, Lcom/android/server/asks/ZipAnalyzerUtil;->parseEocdRecord(JLjava/lang/String;)Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;

    move-result-object v4

    iget-short v6, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->diskNumber:S

    if-gtz v6, :cond_1c

    iget-short v6, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->startDiskNumber:S

    if-lez v6, :cond_1d

    goto :goto_11

    :catch_3
    move-exception v0

    goto :goto_13

    :catch_4
    move-exception v0

    goto :goto_14

    :cond_1c
    :goto_11
    const-string/jumbo v6, "ZIP Number of this Disk Tampering"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v17, v1, v18

    :cond_1d
    iget v6, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->centralDirOffset:I

    iget v8, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->centralDirSize:I

    invoke-static {v6, v8, v0}, Lcom/android/server/asks/ZipAnalyzerUtil;->countCentralDirectorySignatures(IILjava/lang/String;)I

    move-result v0

    iget-short v6, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->numEntriesThisDisk:S

    if-ne v6, v0, :cond_1e

    iget-short v4, v4, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->numEntriesTotal:S

    if-eq v4, v0, :cond_1f

    :cond_1e
    const-string/jumbo v0, "Number of Entries this DiskTampering"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    aput v17, v1, v17
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1f
    :goto_12
    move-object v8, v1

    goto :goto_16

    :goto_13
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :goto_14
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_20
    :goto_15
    const-string/jumbo v1, "The file "

    const-string v4, " does not exist."

    invoke-static {v1, v0, v4, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_16
    if-eqz v8, :cond_22

    invoke-static {v8}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    if-lez v0, :cond_21

    const-string/jumbo v0, "Zip broken"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/asks/MORERULES;->result_moreRule_Malformed:Z

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    goto :goto_17

    :cond_21
    move-object v1, v3

    const-string/jumbo v0, "Zip Success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/asks/RETVALUE;->status:I

    :cond_22
    :goto_17
    return-void

    :cond_23
    move-object v1, v3

    move v2, v4

    iput v2, v1, Lcom/android/server/asks/RETVALUE;->status:I

    const-string/jumbo v0, "The moreRule targetPolicy may be NULL."

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final checkPolicy(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-nez v2, :cond_0

    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-eqz v3, :cond_0

    iget v6, v3, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v7, v3, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v8, v3, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget-object v9, v3, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_0
    if-eqz v1, :cond_4

    const-string/jumbo v3, "PackageInformationStore"

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/PKGINFO;

    if-eqz v1, :cond_2

    const-string/jumbo v0, "checkPolicy() : Target"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v14, v1, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v15, v1, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v0, v1, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget-object v2, v1, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    const/16 v19, 0x0

    const/4 v13, 0x0

    move-object/from16 v12, p2

    move/from16 v16, v0

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_1
    const/16 v16, 0x0

    const-string v17, ""

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v18, ""

    const/16 v19, 0x0

    move-object/from16 v12, p2

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_2
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const/16 v16, 0x0

    const-string v17, ""

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v18, ""

    const/16 v19, 0x0

    move-object/from16 v12, p2

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_3
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "checkPolicy() : Default"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget v14, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v15, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v1, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget-object v2, v0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    const/16 v19, 0x0

    const/4 v13, 0x0

    move-object/from16 v12, p2

    move-object/from16 v18, v0

    move/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_4
    const/16 v16, 0x0

    const-string v17, ""

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v18, ""

    const/16 v19, 0x0

    move-object/from16 v12, p2

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void
.end method

.method public final checkPolicyWithAppHash(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "checkPolicyWithDetail() : Target"

    const-string/jumbo v5, "PackageInformationStore"

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/PKGINFO;

    if-eqz v0, :cond_2

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v9, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v10, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget-object v11, v0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p3

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/16 v18, 0x0

    const-string v19, ""

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v20, ""

    const/16 v21, 0x0

    move-object/from16 v14, p3

    invoke-virtual/range {v14 .. v21}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_1
    const-string v0, "ALL"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/PKGINFO;

    if-eqz v0, :cond_2

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v2, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v3, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget-object v4, v0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    const/16 v21, 0x0

    const/4 v15, 0x0

    move-object/from16 v14, p3

    move-object/from16 v20, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v14 .. v21}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    :cond_2
    return-void
.end method

.method public final checkPolicyWithPEM([Ljava/lang/String;IZLcom/android/server/asks/RETVALUE;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const-string/jumbo v4, "PackageInformationStore"

    const-string/jumbo v5, "start to check P policy."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    if-eqz v5, :cond_24

    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    if-eqz v5, :cond_24

    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-eqz v5, :cond_24

    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-eqz v5, :cond_24

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_0

    aget-object v8, v1, v7

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_5

    iget-object v10, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v13, v12

    const/4 v12, 0x0

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const/4 v11, 0x0

    goto :goto_3

    :cond_1
    if-nez v12, :cond_2

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v14

    if-eqz v14, :cond_2

    const-string/jumbo v14, "additional P(B) :targetKey  - "

    invoke-static {v14, v12, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x1

    :goto_3
    if-eqz v11, :cond_4

    const-string/jumbo v9, "all target! "

    invoke-static {v13, v9, v4}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x1

    move v10, v11

    move-object v11, v12

    move v12, v13

    goto :goto_1

    :cond_5
    move-object v12, v11

    move v11, v10

    const/4 v10, 0x0

    :goto_4
    const-string/jumbo v9, "additional P(B): apply MoreRule"

    const/16 v13, 0x1f5

    const/16 v14, 0x1f7

    const/16 v15, 0x1f6

    const/4 v6, 0x3

    if-eqz v10, :cond_b

    if-eqz v11, :cond_b

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/asks/PEMINFO;

    const-string/jumbo v11, "checkPolicywithPem(B) :targetKey  - "

    invoke-static {v11, v12, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_b

    iget v11, v10, Lcom/android/server/asks/PEMINFO;->MIN:I

    if-gt v11, v2, :cond_b

    iget v11, v10, Lcom/android/server/asks/PEMINFO;->MAX:I

    if-gt v2, v11, :cond_b

    invoke-virtual {v0, v10, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    iget v11, v3, Lcom/android/server/asks/RETVALUE;->status:I

    if-eqz v11, :cond_6

    if-eq v11, v6, :cond_7

    goto :goto_5

    :cond_6
    iget-object v11, v10, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    if-eqz v11, :cond_7

    iget v11, v11, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    iput v11, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    invoke-static {v11, v12, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_7
    iget v11, v10, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    if-ne v11, v15, :cond_8

    if-nez p3, :cond_8

    const-string/jumbo v0, "additional P(B) : Target Group(local)"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    iget-object v5, v10, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    iget-object v6, v10, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    iget-object v7, v10, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v1, 0x0

    const/16 v4, 0x1f9

    move-object/from16 v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_8
    if-ne v11, v14, :cond_9

    if-eqz p3, :cond_9

    const-string/jumbo v0, "additional P(B) : Target Group(url)"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    iget-object v5, v10, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    iget-object v6, v10, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    iget-object v7, v10, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v1, 0x0

    const/16 v4, 0x1f9

    move-object/from16 v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_9
    if-ne v11, v13, :cond_a

    const-string/jumbo v0, "additional P(B) :  Target Group"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    iget-object v5, v10, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    iget-object v6, v10, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    iget-object v7, v10, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v1, 0x0

    const/16 v4, 0x1f9

    move-object/from16 v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_a
    move-object/from16 v3, p4

    :cond_b
    :goto_5
    const/4 v10, 0x0

    :goto_6
    array-length v11, v1

    if-ge v10, v11, :cond_12

    iget-object v11, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    aget-object v12, v1, v10

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    aget-object v12, v1, v10

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/asks/PEMINFO;

    if-eqz v11, :cond_11

    iget v12, v11, Lcom/android/server/asks/PEMINFO;->MIN:I

    if-gt v12, v2, :cond_11

    iget v12, v11, Lcom/android/server/asks/PEMINFO;->MAX:I

    if-gt v2, v12, :cond_11

    invoke-virtual {v0, v11, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    iget v12, v3, Lcom/android/server/asks/RETVALUE;->status:I

    if-eqz v12, :cond_c

    if-eq v12, v6, :cond_d

    goto :goto_7

    :cond_c
    iget-object v12, v11, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    if-eqz v12, :cond_d

    iget v12, v12, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    iput v12, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v12

    if-eqz v12, :cond_d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    invoke-static {v12, v7, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_d
    iget v7, v11, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    if-ne v7, v15, :cond_e

    if-nez p3, :cond_e

    const-string/jumbo v0, "additional P(B) : Target(local)"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v11, Lcom/android/server/asks/PEMINFO;->SA:I

    iget-object v5, v11, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    iget-object v6, v11, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    iget-object v7, v11, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v1, 0x0

    const/16 v4, 0x1f9

    move-object/from16 v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_e
    if-ne v7, v14, :cond_f

    if-eqz p3, :cond_f

    const-string/jumbo v0, "additional P(B) : Target(url)"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v11, Lcom/android/server/asks/PEMINFO;->SA:I

    iget-object v5, v11, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    iget-object v6, v11, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    iget-object v7, v11, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v1, 0x0

    const/16 v4, 0x1f9

    move-object/from16 v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_f
    if-ne v7, v13, :cond_10

    const-string/jumbo v0, "additional P(B) : Target"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v11, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v11, Lcom/android/server/asks/PEMINFO;->SA:I

    iget-object v5, v11, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    iget-object v6, v11, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    iget-object v7, v11, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v1, 0x0

    const/16 v4, 0x1f9

    move-object/from16 v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_10
    move-object/from16 v3, p4

    :cond_11
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    :cond_12
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_8
    iget-object v12, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_17

    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v12, v11

    const/4 v11, 0x0

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const/4 v8, 0x0

    goto :goto_a

    :cond_13
    if-nez v11, :cond_14

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v8

    if-eqz v8, :cond_14

    const-string/jumbo v8, "additional P(Wa) : targetKey="

    invoke-static {v8, v11, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_15
    const/4 v8, 0x1

    :goto_a
    if-eqz v8, :cond_16

    const-string/jumbo v5, "additional P(Wa) : target all "

    invoke-static {v12, v5, v4}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    move v9, v8

    move-object v8, v10

    move-object v10, v11

    goto :goto_b

    :cond_16
    add-int/lit8 v7, v7, 0x1

    move v9, v8

    move-object v10, v11

    move v11, v12

    goto :goto_8

    :cond_17
    const/4 v8, 0x0

    :goto_b
    const-string/jumbo v5, "additional P(Wa): apply MoreRule"

    if-eqz v8, :cond_1e

    if-eqz v9, :cond_1e

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/asks/PEMINFO;

    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v8

    if-eqz v8, :cond_18

    const-string/jumbo v8, "all target key: "

    invoke-static {v8, v10, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    if-eqz v7, :cond_1e

    iget v8, v7, Lcom/android/server/asks/PEMINFO;->MIN:I

    if-gt v8, v2, :cond_1e

    iget v8, v7, Lcom/android/server/asks/PEMINFO;->MAX:I

    if-gt v2, v8, :cond_1e

    invoke-virtual {v0, v7, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    iget v8, v3, Lcom/android/server/asks/RETVALUE;->status:I

    if-eqz v8, :cond_19

    if-eq v8, v6, :cond_1a

    goto :goto_c

    :cond_19
    iget-object v8, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    if-eqz v8, :cond_1a

    iget v8, v8, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    iput v8, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    invoke-static {v8, v9, v4}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1a
    iget v8, v7, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    if-ne v8, v15, :cond_1b

    if-nez p3, :cond_1b

    const-string/jumbo v0, "additional P(Wa) : Target Group(local)"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v7, Lcom/android/server/asks/PEMINFO;->SA:I

    iget-object v5, v7, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    iget-object v6, v7, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    iget-object v7, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v1, 0x0

    const/16 v4, 0x1f9

    move-object/from16 v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_1b
    if-ne v8, v14, :cond_1c

    if-eqz p3, :cond_1c

    const-string/jumbo v0, "additional P(Wa) : Target Group(url)"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v7, Lcom/android/server/asks/PEMINFO;->SA:I

    iget-object v5, v7, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    iget-object v6, v7, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    iget-object v7, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v1, 0x0

    const/16 v4, 0x1f9

    move-object/from16 v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_1c
    if-ne v8, v13, :cond_1d

    const-string/jumbo v0, "additional P(Wa) :  Target Group"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v7, Lcom/android/server/asks/PEMINFO;->SA:I

    iget-object v5, v7, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    iget-object v6, v7, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    iget-object v7, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v1, 0x0

    const/16 v4, 0x1f9

    move-object/from16 v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_1d
    move-object/from16 v3, p4

    :cond_1e
    :goto_c
    const/4 v7, 0x0

    :goto_d
    array-length v8, v1

    if-ge v7, v8, :cond_24

    iget-object v8, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    aget-object v9, v1, v7

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    iget-object v8, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    aget-object v9, v1, v7

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/asks/PEMINFO;

    iget v9, v8, Lcom/android/server/asks/PEMINFO;->MIN:I

    if-gt v9, v2, :cond_23

    iget v9, v8, Lcom/android/server/asks/PEMINFO;->MAX:I

    if-gt v2, v9, :cond_23

    invoke-virtual {v0, v8, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    iget v9, v3, Lcom/android/server/asks/RETVALUE;->status:I

    if-eqz v9, :cond_1f

    if-eq v9, v6, :cond_20

    goto :goto_e

    :cond_1f
    iget-object v9, v8, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    if-eqz v9, :cond_20

    iget v9, v9, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    iput v9, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    invoke-static {v9, v10, v4}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_20
    iget v9, v8, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    if-ne v9, v15, :cond_21

    if-nez p3, :cond_21

    const-string/jumbo v0, "additional P(Wa) : Target(local)"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v8, Lcom/android/server/asks/PEMINFO;->SA:I

    iget-object v5, v8, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    iget-object v6, v8, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    iget-object v7, v8, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v1, 0x0

    const/16 v4, 0x1f9

    move-object/from16 v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_21
    if-ne v9, v14, :cond_22

    if-eqz p3, :cond_22

    const-string/jumbo v0, "additional P(Wa) : Target(url)"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v8, Lcom/android/server/asks/PEMINFO;->SA:I

    iget-object v5, v8, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    iget-object v6, v8, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    iget-object v7, v8, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v1, 0x0

    const/16 v4, 0x1f9

    move-object/from16 v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_22
    if-ne v9, v13, :cond_23

    const-string/jumbo v0, "additional P(Wa) : Target"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v8, Lcom/android/server/asks/PEMINFO;->SA:I

    iget-object v5, v8, Lcom/android/server/asks/PEMINFO;->tagName:Ljava/lang/String;

    iget-object v6, v8, Lcom/android/server/asks/PEMINFO;->eventNameForSA:Ljava/lang/String;

    iget-object v7, v8, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    const/4 v1, 0x0

    const/16 v4, 0x1f9

    move-object/from16 v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_23
    :goto_e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p4

    goto/16 :goto_d

    :cond_24
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-eqz v1, :cond_25

    const-string/jumbo v1, "additional P : Default"

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget v2, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v3, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v4, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget-object v5, v0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void

    :cond_25
    const/4 v4, 0x0

    const-string v5, ""

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    return-void
.end method

.method public final checkRegexTarget(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;Z)Z
    .locals 11

    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v0

    const-string/jumbo v1, "PackageInformationStore"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " checkRegexTarget() :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isDomain : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    move-object p3, v2

    :goto_0
    if-eqz p3, :cond_9

    move v3, v0

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x20

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, " hit :"

    const-string v3, " by "

    invoke-static {p3, p1, v3, v4, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    const/4 p3, 0x1

    const-string v3, "ALL"

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/asks/PKGINFO;

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/asks/PKGINFO;

    :cond_5
    :goto_2
    if-eqz v2, :cond_8

    const-string/jumbo p0, "checkPolicyWithDetail() : policy Target"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v2, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v6, v2, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v7, v2, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget-object v8, v2, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v4, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    :goto_3
    move v0, p3

    goto :goto_4

    :cond_6
    move-object v2, p2

    iget-object p1, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/asks/PKGINFO;

    if-eqz p0, :cond_8

    const-string/jumbo p1, "checkPolicyWithDetail() : ALL Target"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v5, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v6, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget-object v7, p0, Lcom/android/server/asks/PKGINFO;->tagName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/asks/PKGINFO;->eventNameForSA:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_8
    :goto_4
    if-nez v0, :cond_9

    const-string/jumbo p0, "Regex Policy does not match."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v0
.end method
