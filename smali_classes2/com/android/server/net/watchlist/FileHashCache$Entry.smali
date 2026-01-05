.class public final Lcom/android/server/net/watchlist/FileHashCache$Entry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLastModified:J

.field public final mSha256Hash:[B


# direct methods
.method public constructor <init>(J[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mLastModified:J

    iput-object p3, p0, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mSha256Hash:[B

    return-void
.end method
