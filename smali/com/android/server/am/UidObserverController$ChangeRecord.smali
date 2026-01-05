.class public final Lcom/android/server/am/UidObserverController$ChangeRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public capability:I

.field public change:I

.field public ephemeral:Z

.field public isPending:Z

.field public procAdj:I

.field public procState:I

.field public procStateSeq:J

.field public uid:I


# virtual methods
.method public final copyTo(Lcom/android/server/am/UidObserverController$ChangeRecord;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    iput-boolean v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    iget-boolean v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    iput-boolean v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    iget-wide v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    iput-wide v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    return-void
.end method
