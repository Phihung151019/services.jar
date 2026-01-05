.class public final Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;


# static fields
.field public static volatile mPidCompacting:I = -0x1


# virtual methods
.method public final getRss(I)[J
    .locals 0

    invoke-static {p1}, Landroid/os/Process;->getRss(I)[J

    move-result-object p0

    return-object p0
.end method

.method public final performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V
    .locals 0

    sput p2, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x3

    invoke-static {p2, p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    invoke-static {p2, p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)I

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->ANON:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne p1, p0, :cond_2

    const/4 p0, 0x2

    invoke-static {p2, p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)I

    :cond_2
    :goto_0
    const/4 p0, -0x1

    sput p0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    return-void
.end method
