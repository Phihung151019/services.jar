.class public final synthetic Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Lcom/android/server/wm/Task;

    sget-object p0, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;

    iget p0, p2, Lcom/android/server/wm/Task;->mTaskId:I

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    sub-int/2addr p0, p1

    return p0
.end method
