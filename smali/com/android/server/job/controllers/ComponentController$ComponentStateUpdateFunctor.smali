.class public final Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mChangedJobs:Landroid/util/ArraySet;

.field public final synthetic this$0:Lcom/android/server/job/controllers/ComponentController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ComponentController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->this$0:Lcom/android/server/job/controllers/ComponentController;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/ComponentController;->updateComponentEnabledStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
