.class public final synthetic Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-boolean p2, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->DEBUG:Z

    invoke-virtual {p1, p0}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeeded(I)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/server/appop/AppOpsService$2;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, p1, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    sget-boolean p2, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/util/SparseLongArray;

    invoke-direct {p2}, Landroid/util/SparseLongArray;-><init>()V

    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda18;

    invoke-direct {v2, p2, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda18;-><init>(Landroid/util/SparseLongArray;I)V

    invoke-virtual {p1, p0, v2}, Lcom/android/server/appop/AppOpsService;->doForAllAttributedOpsInUidLocked(ILjava/util/function/Consumer;)V

    new-instance p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda18;

    invoke-direct {p0, p2, v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda18;-><init>(Landroid/util/SparseLongArray;I)V

    iget-object p2, p1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2, p0}, Lcom/android/server/appop/AppOpsService;->doForAllAttributedOpsInUidLocked(ILjava/util/function/Consumer;)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit p1

    :goto_1
    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
