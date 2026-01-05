.class public final Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final MINUS_ONE:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;->MINUS_ONE:Ljava/math/BigInteger;

    return-void
.end method
