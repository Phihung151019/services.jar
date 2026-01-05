.class public final Lcom/android/server/power/stats/BatteryHistoryDirectory$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static compress(Ljava/io/OutputStream;[B)V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    new-instance v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/gzip/GzipParameters;)V

    array-length p0, p1

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, p0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->write([BII)V

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->finish()V

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->flush()V

    return-void
.end method
