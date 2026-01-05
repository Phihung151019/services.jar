.class public final Lcom/android/server/power/stats/KernelWakelockStats$Entry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public activeTimeUs:J

.field public count:I

.field public totalTimeUs:J

.field public version:I


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    iput-wide p3, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    iput-wide p5, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    iput p2, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    return-void
.end method
