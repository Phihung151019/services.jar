.class final Lcom/android/server/job/controllers/QuotaController$TimingSession;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/job/controllers/QuotaController$TimedEvent;


# instance fields
.field public final bgJobCount:I

.field public final endTimeElapsed:J

.field public final mHashCode:I

.field public final startTimeElapsed:J


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iput-wide p4, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    invoke-static {p2, p3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$smhashLong(J)I

    move-result p2

    mul-int/lit8 p2, p2, 0x1f

    invoke-static {p4, p5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$smhashLong(J)I

    move-result p3

    add-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x1f

    add-int/2addr p3, p1

    iput p3, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->mHashCode:I

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v2, " -> "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v4, " ("

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v0, "), "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p0, " bg jobs."

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final getEndTimeElapsed()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->mHashCode:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TimingSession{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
