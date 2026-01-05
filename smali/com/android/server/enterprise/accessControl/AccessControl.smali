.class public final Lcom/android/server/enterprise/accessControl/AccessControl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mApi:Ljava/lang/String;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mContextUid:I

.field public mIsDangerousApi:Z

.field public mIsDoPoEnforce:Z

.field public mIsOwnerOnly:Z

.field public mIsUserPolicy:Z

.field public mKnoxPermissions:Ljava/util/List;

.field public mPid:I

.field public mScope:I

.field public mShouldCheckAdmin:Z

.field public mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mUid:I

    iput v0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mPid:I

    iput v0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextUid:I

    return-void
.end method

.method public static buildAccessControl(ILjava/lang/String;Ljava/util/List;)Lcom/android/server/enterprise/accessControl/AccessControl;
    .locals 4

    new-instance v0, Lcom/android/server/enterprise/accessControl/AccessControl;

    invoke-direct {v0}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsUserPolicy:Z

    if-ne v2, p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    iput-boolean p0, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsOwnerOnly:Z

    const-string p0, "DO_OR_PO"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDoPoEnforce:Z

    const-string v3, "KNOX_API_ACCESS_GRANT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDangerousApi:Z

    const-string v3, "DA"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v2

    :goto_3
    iput-boolean p0, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mShouldCheckAdmin:Z

    iput-object p2, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mKnoxPermissions:Ljava/util/List;

    const-string/jumbo p0, "REMOTE_CONTROL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    iput v2, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    return-object v0

    :cond_4
    const-string/jumbo p0, "PROVISION_CERT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x2

    iput p0, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    return-object v0

    :cond_5
    iput v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    return-object v0
.end method


# virtual methods
.method public final clone()Lcom/android/server/enterprise/accessControl/AccessControl;
    .locals 2

    new-instance v0, Lcom/android/server/enterprise/accessControl/AccessControl;

    invoke-direct {v0}, Lcom/android/server/enterprise/accessControl/AccessControl;-><init>()V

    iget v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mUid:I

    iput v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mUid:I

    iget v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextUid:I

    iput v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextUid:I

    iget v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    iput v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    iget-object v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mApi:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mApi:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsOwnerOnly:Z

    iput-boolean v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsOwnerOnly:Z

    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsUserPolicy:Z

    iput-boolean v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsUserPolicy:Z

    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDoPoEnforce:Z

    iput-boolean v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDoPoEnforce:Z

    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mShouldCheckAdmin:Z

    iput-boolean v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mShouldCheckAdmin:Z

    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDangerousApi:Z

    iput-boolean v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDangerousApi:Z

    iget-object v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object p0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mKnoxPermissions:Ljava/util/List;

    iput-object p0, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mKnoxPermissions:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/enterprise/accessControl/AccessControl;->clone()Lcom/android/server/enterprise/accessControl/AccessControl;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ mUid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | mPid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | mContextUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | mIsOwnerOnly = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsOwnerOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | mIsUserPolicy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsUserPolicy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | mIsDoPoEnforce = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDoPoEnforce:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | mShouldCheckAdmin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mShouldCheckAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | mIsDangerousApi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDangerousApi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | mPermissions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mKnoxPermissions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | mScopes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    const-string v1, " }"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateCallerInfo(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mPid:I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextUid:I

    iput-object p1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    :cond_0
    return-void
.end method
