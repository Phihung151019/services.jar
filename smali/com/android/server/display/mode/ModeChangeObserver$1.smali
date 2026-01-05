.class public final Lcom/android/server/display/mode/ModeChangeObserver$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/ModeChangeObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/ModeChangeObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {p0, p1}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$mupdateVoteForDisplay(Lcom/android/server/display/mode/ModeChangeObserver;I)V

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    iget-object v0, v0, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const-string/jumbo p0, "ModeChangeObserver"

    const-string p1, "Changed display not found"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    iget-object v1, v1, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    iget-object v2, v2, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {p0, p1}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$mupdateVoteForDisplay(Lcom/android/server/display/mode/ModeChangeObserver;I)V

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    iget-object v0, v0, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const-string/jumbo p0, "ModeChangeObserver"

    const-string/jumbo p1, "Removed display not found"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    iget-object v1, v1, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    iget-object v2, v2, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    iget-object v2, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    iget-object v2, v2, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method
