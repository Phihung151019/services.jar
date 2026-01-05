.class public final synthetic Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/mode/SkinThermalStatusObserver;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/mode/SkinThermalStatusObserver;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    iput p2, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    iget p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    iget p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;->f$1:I

    iget-object v1, v0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mStatus:I

    iget-object v3, v0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-string/jumbo v0, "SkinThermalStatusObserver"

    const-string/jumbo v1, "Updating votes, display already removed, display="

    invoke-static {p0, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SkinThermalStatusObserver"

    const-string/jumbo v4, "Updating votes for status="

    const-string v5, ", display ="

    const-string v6, ", map="

    invoke-static {v2, p0, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->reportThrottlingIfNeeded(IILandroid/util/SparseArray;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
