.class public final synthetic Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;->f$0:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;->f$0:J

    check-cast p1, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    :goto_0
    array-length v2, p1

    if-ge p0, v2, :cond_1

    aget-object v2, p1, p0

    if-eqz v2, :cond_0

    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
