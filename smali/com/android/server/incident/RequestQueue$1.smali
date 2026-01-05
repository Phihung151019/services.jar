.class public final Lcom/android/server/incident/RequestQueue$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/incident/RequestQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/incident/RequestQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    iget-object v0, v0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    iget-object v1, v1, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    iget-object v2, v2, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    iget-object p0, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/incident/RequestQueue$Rec;

    iget-object v2, v2, Lcom/android/server/incident/RequestQueue$Rec;->runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
