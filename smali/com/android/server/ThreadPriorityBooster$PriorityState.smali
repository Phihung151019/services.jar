.class public final Lcom/android/server/ThreadPriorityBooster$PriorityState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public prevPriority:I

.field public regionCounter:I

.field public final tid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    return-void
.end method
