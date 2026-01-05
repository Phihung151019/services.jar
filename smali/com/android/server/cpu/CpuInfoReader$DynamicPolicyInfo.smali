.class public final Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final affectedCpuCores:Landroid/util/IntArray;

.field public final avgTimeInStateCpuFreqKHz:J

.field public final curCpuFreqKHz:J

.field public final maxCpuFreqKHz:J


# direct methods
.method public constructor <init>(JJJLandroid/util/IntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    iput-wide p3, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    iput-wide p5, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->avgTimeInStateCpuFreqKHz:J

    iput-object p7, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->affectedCpuCores:Landroid/util/IntArray;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicPolicyInfo{curCpuFreqKHz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", avgTimeInStateCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->avgTimeInStateCpuFreqKHz:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", affectedCpuCores = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->affectedCpuCores:Landroid/util/IntArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
