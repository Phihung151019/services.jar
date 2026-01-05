.class public final Lcom/android/server/asks/RUFSContainer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mADPCarriers:Ljava/lang/String;

.field public mADPModels:Ljava/lang/String;

.field public mASKSRNEWCarriers:Ljava/lang/String;

.field public mASKSRNEWModels:Ljava/lang/String;

.field public mDigestInToken:Ljava/lang/String;

.field public mHasRUFSToken:Z

.field public mIsDelta:Z

.field public mRUFSpolicyDeltaVersion:Ljava/lang/String;

.field public mRUFSpolicyPath:Ljava/lang/String;

.field public mRUFSpolicyVersion:Ljava/lang/String;

.field public mSizeofFiles:J

.field public mSizeofZip:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    iput-boolean v0, p0, Lcom/android/server/asks/RUFSContainer;->mIsDelta:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyDeltaVersion:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofFiles:J

    iput-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mADPModels:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mADPCarriers:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWModels:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWCarriers:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final setADPCarriers(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mADPCarriers:Ljava/lang/String;

    return-void
.end method

.method public final setADPModels(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mADPModels:Ljava/lang/String;

    return-void
.end method

.method public final setASKSRNEWCarriers(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWCarriers:Ljava/lang/String;

    return-void
.end method

.method public final setASKSRNEWModels(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWModels:Ljava/lang/String;

    return-void
.end method

.method public final setDeltaPolicyVersion()V
    .locals 1

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyDeltaVersion:Ljava/lang/String;

    return-void
.end method

.method public final setDigest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    return-void
.end method

.method public final setIsDelta()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/asks/RUFSContainer;->mIsDelta:Z

    return-void
.end method

.method public final setPolicyVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    return-void
.end method

.method public final setSizeofFiles(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofFiles:J

    return-void
.end method

.method public final setSizeofZip(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    return-void
.end method
