.class public Lcom/android/server/power/stats/SystemServerCpuThreadReader;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDeltaCpuThreadTimes:Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

.field public final mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

.field public mLastBinderThreadCpuTimesUs:[J

.field public mLastThreadCpuTimesUs:[J


# direct methods
.method public constructor <init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;-><init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/SystemServerCpuThreadReader;-><init>(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    iput-object p1, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    return-void
.end method
