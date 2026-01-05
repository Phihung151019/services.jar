.class public final Lcom/android/server/display/mode/ModeChangeObserver$2;
.super Landroid/view/DisplayEventReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/ModeChangeObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/ModeChangeObserver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-direct {p0, p2}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final onModeRejected(JI)V
    .locals 3

    const-string/jumbo v0, "Mode Rejected event received"

    const-string/jumbo v1, "ModeChangeObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    iget-object v2, v0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    iget-object p3, p3, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result p3

    if-gez p3, :cond_1

    const-string/jumbo p0, "Rejected Modes Vote will be updated after display is added"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p3, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    iget-object v0, p3, Lcom/android/server/display/mode/ModeChangeObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iget-object p3, p3, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    new-instance p1, Lcom/android/server/display/mode/RejectedModesVote;

    invoke-direct {p1, p0}, Lcom/android/server/display/mode/RejectedModesVote;-><init>(Ljava/util/Set;)V

    const/16 p0, 0xa

    invoke-virtual {v0, p3, p0, p1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method
