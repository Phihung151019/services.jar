.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:[J

.field public final synthetic f$2:[Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;[J[Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda44;->f$0:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda44;->f$1:[J

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda44;->f$2:[Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda44;->f$0:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda44;->f$1:[J

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda44;->f$2:[Ljava/util/ArrayList;

    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    sget v2, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    iget-wide v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2

    iget v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getWritebackSizePid(I)[J

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const-string v4, ")"

    invoke-static {p1, v3, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 p1, 0x0

    aget-wide v4, v0, p1

    const/4 v3, 0x1

    aget-wide v6, v0, v3

    const/4 v3, 0x0

    const-wide/16 v8, -0x1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;-><init>(IJJJLjava/lang/String;)V

    aget-wide v3, v1, p1

    add-long/2addr v3, v6

    aput-wide v3, v1, p1

    aget-object v0, p0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    aput-object v0, p0, p1

    :cond_1
    aget-object p0, p0, p1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method
