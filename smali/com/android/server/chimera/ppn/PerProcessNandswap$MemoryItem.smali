.class public final Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final label:Ljava/lang/String;

.field public final lastNandswapTimeDiff:J

.field public final ppnState:I

.field public subitems:Ljava/util/ArrayList;

.field public final swap:J

.field public final writeback:J


# direct methods
.method public constructor <init>(IJJJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->label:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->swap:J

    iput-wide p4, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->writeback:J

    iput p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->ppnState:I

    iput-wide p6, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->lastNandswapTimeDiff:J

    return-void
.end method
