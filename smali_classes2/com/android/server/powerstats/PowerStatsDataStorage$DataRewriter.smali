.class public final Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# instance fields
.field public mActiveFileData:[B

.field public mNewData:[B


# virtual methods
.method public final read(Ljava/io/InputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mActiveFileData:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    return-void
.end method

.method public final reset()V
    .locals 0

    return-void
.end method

.method public final shouldWrite()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final write(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mActiveFileData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mNewData:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
