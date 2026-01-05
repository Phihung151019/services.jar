.class public abstract Lorg/apache/commons/math/MathRuntimeException;
.super Ljava/lang/RuntimeException;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field private static final serialVersionUID:J = 0x7db74ddedac69d52L


# direct methods
.method public static varargs createIllegalArgumentException(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1

    new-instance v0, Lorg/apache/commons/math/MathRuntimeException$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math/MathRuntimeException$4;-><init>(Lorg/apache/commons/math/exception/util/LocalizedFormats;[Ljava/lang/Object;)V

    return-object v0
.end method
