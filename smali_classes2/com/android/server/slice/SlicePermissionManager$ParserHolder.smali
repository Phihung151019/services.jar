.class public final Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public input:Ljava/io/InputStream;

.field public parser:Lorg/xmlpull/v1/XmlPullParser;


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->input:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method
