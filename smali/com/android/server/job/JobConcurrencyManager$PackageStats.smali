.class Lcom/android/server/job/JobConcurrencyManager$PackageStats;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public numRunningEj:I

.field public numRunningRegular:I

.field public numStagedEj:I

.field public numStagedRegular:I

.field public packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method public static -$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    add-int/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    return-void

    :cond_1
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    add-int/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    return-void
.end method

.method public static -$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    add-int/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    return-void

    :cond_1
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    add-int/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
