.class public final Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public algorithm:Ljava/lang/String;

.field public blobId:J

.field public digest:[B

.field public expiryTimeMillis:J

.field public label:Ljava/lang/CharSequence;

.field public tag:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    const-string/jumbo v0, "SHA-256"

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->algorithm:Ljava/lang/String;

    return-void
.end method
