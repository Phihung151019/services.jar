.class public final Lcom/android/server/asks/ASKSManagerService$ASKSSession;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public emMode:I

.field public isASKSTarget:Z

.field public mCAKeyIndex:Ljava/lang/String;

.field public mCertName:Ljava/lang/String;

.field public mCodePath:Ljava/lang/String;

.field public mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

.field public mPackageDigest:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPackageNameHash:Ljava/lang/String;

.field public mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

.field public mRufsContainer:Lcom/android/server/asks/RUFSContainer;

.field public mSignature:[Landroid/content/pm/Signature;

.field public mTokenName:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;


# virtual methods
.method public final clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    return-void
.end method

.method public final getCodePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getPkgDigest()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    return-object p0
.end method

.method public final getTokenName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    return-object p0
.end method

.method public final setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-void
.end method

.method public final setEMMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    return-void
.end method

.method public final setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    return-void
.end method

.method public final setRufsContainer(Lcom/android/server/asks/RUFSContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "version = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    if-eqz v1, :cond_0

    const-string v1, ", restrict = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", em mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v1, :cond_1

    const-string v1, ", deletable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService$Deletable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
