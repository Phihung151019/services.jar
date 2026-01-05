.class public final synthetic Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Rect;

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/WindowContainer;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/WindowContainer;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
