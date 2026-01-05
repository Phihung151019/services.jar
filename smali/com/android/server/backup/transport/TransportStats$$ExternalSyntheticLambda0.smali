.class public final synthetic Lcom/android/server/backup/transport/TransportStats$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/android/server/backup/transport/TransportStats$Stats;

    check-cast p2, Lcom/android/server/backup/transport/TransportStats$Stats;

    new-instance p0, Lcom/android/server/backup/transport/TransportStats$Stats;

    iget v0, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    iget v1, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    add-int v2, v0, v1

    iget-wide v3, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget-wide v5, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    int-to-double v0, v1

    mul-double/2addr v5, v0

    add-double/2addr v5, v3

    int-to-double v0, v2

    div-double/2addr v5, v0

    iget-wide v0, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    iget-wide v3, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v3, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    iget-wide p1, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    iput-wide v5, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    iput-wide p1, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    return-object p0
.end method
