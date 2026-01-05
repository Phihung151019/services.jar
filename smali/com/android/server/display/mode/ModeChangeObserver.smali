.class public final Lcom/android/server/display/mode/ModeChangeObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public final mLooper:Landroid/os/Looper;

.field mModeChangeListener:Landroid/view/DisplayEventReceiver;

.field public final mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

.field public final mRejectedModesMap:Landroid/util/LongSparseArray;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public static -$$Nest$mupdateVoteForDisplay(Lcom/android/server/display/mode/ModeChangeObserver;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "ModeChangeObserver"

    const-string p1, "Added or Changed display has disappeared"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v0

    instance-of v1, v0, Landroid/view/DisplayAddress$Physical;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v0}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/server/display/mode/RejectedModesVote;

    invoke-direct {v1, v0}, Lcom/android/server/display/mode/RejectedModesVote;-><init>(Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    iput-object p1, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iput-object p2, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iput-object p3, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mLooper:Landroid/os/Looper;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method
