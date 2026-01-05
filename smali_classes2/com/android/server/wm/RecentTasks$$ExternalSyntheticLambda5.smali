.class public final synthetic Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda5;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget p0, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda5;->f$0:I

    check-cast p1, Lcom/android/server/wm/Task;

    sget-object v0, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
