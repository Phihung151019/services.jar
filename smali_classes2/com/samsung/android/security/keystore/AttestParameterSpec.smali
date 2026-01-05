.class public final Lcom/samsung/android/security/keystore/AttestParameterSpec;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAlgorithm:Ljava/lang/String;

.field public final mChallenge:[B

.field public final mSAKUidRequired:Z

.field public final mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method public constructor <init>([BZLandroid/security/keystore/KeyGenParameterSpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mAlgorithm:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mAlgorithm:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mChallenge:[B

    iput-boolean p2, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSAKUidRequired:Z

    iput-object p3, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    return-void
.end method
