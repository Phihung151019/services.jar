.class public final Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDistribution:Lorg/apache/commons/math/distribution/BetaDistributionImpl;

.field public final mSamples:[D


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mSamples:[D

    new-instance v1, Lorg/apache/commons/math/distribution/BetaDistributionImpl;

    invoke-direct {v1}, Lorg/apache/commons/math/distribution/BetaDistributionImpl;-><init>()V

    iput-object v1, p0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mDistribution:Lorg/apache/commons/math/distribution/BetaDistributionImpl;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    return-void
.end method


# virtual methods
.method public reseed(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mDistribution:Lorg/apache/commons/math/distribution/BetaDistributionImpl;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->reseedRandomGenerator(J)V

    return-void
.end method
