.class public final Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mGenerationId:I

.field public final mKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(ILjavax/crypto/SecretKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->mGenerationId:I

    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->mKey:Ljavax/crypto/SecretKey;

    return-void
.end method
