.class public final synthetic Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FreeformController;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FreeformController;[ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/FreeformController;

    iput-object p2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$1:[I

    iput-object p3, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/FreeformController;

    iget-object v1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$1:[I

    iget-object p0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    iget v0, v0, Lcom/android/server/wm/FreeformController;->mMaxActiveTasks:I

    if-le v3, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
