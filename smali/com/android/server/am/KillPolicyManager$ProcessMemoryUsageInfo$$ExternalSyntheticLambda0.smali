.class public final synthetic Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field public final synthetic f$1:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-gez p0, :cond_0

    iget p0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object p1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1, p1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfoInternal(IIILjava/lang/String;)V

    :cond_0
    return-void
.end method
