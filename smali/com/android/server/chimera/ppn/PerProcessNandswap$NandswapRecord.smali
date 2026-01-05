.class public final Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public adj:I

.field public lastNandswapTime:J

.field public pendingNandswapTime:J

.field public final pid:I

.field public ppnState:I

.field public final ppnStateLock:Ljava/lang/Object;

.field public procState:I

.field public final processName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    iput p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->uid:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    iput-wide v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pendingNandswapTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnStateLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    iput p3, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    iput p4, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    iget-wide v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pendingNandswapTime:J

    iget-wide p0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pendingNandswapTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method
