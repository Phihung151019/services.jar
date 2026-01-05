.class public final synthetic Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    iget-wide v0, p0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;->f$0:J

    check-cast p1, Lcom/android/server/alarm/Alarm;

    iget-object p0, p1, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    const/4 p1, 0x0

    aget-wide v2, p0, p1

    const-wide v4, 0x757b12c00L

    add-long/2addr v0, v4

    cmp-long p0, v2, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method
