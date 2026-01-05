.class public final Lcom/android/server/bgslotmanager/MemInfoGetter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mInfoInner:Lcom/android/internal/util/MemInfoReader;

.field public final mTotalMemMb:J

.field public final memoryMBToGBPool:[[I


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3000

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v2

    const/16 v0, 0x2000

    const/16 v1, 0xc

    filled-new-array {v0, v1}, [I

    move-result-object v3

    const/16 v0, 0x1800

    const/16 v1, 0x8

    filled-new-array {v0, v1}, [I

    move-result-object v4

    const/16 v0, 0x1000

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v5

    const/16 v0, 0xc00

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v6

    const/16 v0, 0x800

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v7

    const/16 v0, 0x400

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v8

    const/4 v0, 0x0

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v9

    filled-new-array/range {v2 .. v9}, [[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->memoryMBToGBPool:[[I

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/bgslotmanager/MemInfoGetter;->mTotalMemMb:J

    return-void
.end method
