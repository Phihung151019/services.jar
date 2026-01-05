.class public final Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;
.super Ljava/io/Writer;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "Shouldn\'t be here"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final flush()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;->close()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final write([CII)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;->close()V

    const/4 p0, 0x0

    throw p0
.end method
