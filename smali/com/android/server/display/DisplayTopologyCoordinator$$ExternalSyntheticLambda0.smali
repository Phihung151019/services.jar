.class public final synthetic Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayTopologyCoordinator;

.field public final synthetic f$1:Landroid/hardware/display/DisplayTopology;

.field public final synthetic f$2:Landroid/util/SparseIntArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayTopologyCoordinator;Landroid/hardware/display/DisplayTopology;Landroid/util/SparseIntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayTopologyCoordinator;

    iput-object p2, p0, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/display/DisplayTopology;

    iput-object p3, p0, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;->f$2:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayTopologyCoordinator;

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/display/DisplayTopology;

    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;->f$2:Landroid/util/SparseIntArray;

    iget-object v0, v0, Lcom/android/server/display/DisplayTopologyCoordinator;->mOnTopologyChangedCallback:Ljava/util/function/Consumer;

    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v1, p0}, Landroid/hardware/display/DisplayTopology;->getGraph(Landroid/util/SparseIntArray;)Landroid/hardware/display/DisplayTopologyGraph;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
