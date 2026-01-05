.class public abstract Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;
.super Lorg/apache/commons/math/distribution/AbstractDistribution;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x872367e4cbe0c2L


# instance fields
.field protected final randomData:Lorg/apache/commons/math/random/RandomDataImpl;

.field private solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/math/distribution/AbstractDistribution;-><init>()V

    new-instance v0, Lorg/apache/commons/math/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->randomData:Lorg/apache/commons/math/random/RandomDataImpl;

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iput-wide v0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->solverAbsoluteAccuracy:D

    return-void
.end method


# virtual methods
.method public final reseedRandomGenerator(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->randomData:Lorg/apache/commons/math/random/RandomDataImpl;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math/random/RandomDataImpl;->reSeed(J)V

    return-void
.end method

.method public final sample()D
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->randomData:Lorg/apache/commons/math/random/RandomDataImpl;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math/random/RandomDataImpl;->nextInversionDeviate(Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;)D

    move-result-wide v0

    return-wide v0
.end method
