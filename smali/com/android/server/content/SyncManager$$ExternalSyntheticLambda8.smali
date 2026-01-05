.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;

.field public final synthetic f$1:Lcom/android/server/content/SyncManager$PrintTable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/content/SyncManager$PrintTable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    iget-object v10, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/content/SyncManager$PrintTable;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    check-cast p2, Landroid/content/SyncStatusInfo$Stats;

    check-cast p3, Ljava/util/function/Function;

    check-cast p4, Ljava/lang/Integer;

    const/4 p1, 0x0

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iget-wide p2, p2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    invoke-static {v10, p2, p3}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)V

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    return-void
.end method
