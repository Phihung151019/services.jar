.class public final synthetic Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-wide p0, p1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    const-wide/16 v0, 0x400

    div-long/2addr p0, v0

    long-to-double p0, p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0
.end method
