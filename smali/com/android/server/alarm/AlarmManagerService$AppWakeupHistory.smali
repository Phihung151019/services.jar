.class Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mPackageHistory:Landroid/util/ArrayMap;

.field public final mWindowSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mWindowSize:J

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;J)V
    .locals 7

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserPackage;

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongArrayQueue;

    iget-object v4, v2, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ", u"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v2, Landroid/content/pm/UserPackage;->userId:I

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-lt v4, v2, :cond_0

    invoke-virtual {v3, v4}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v5

    invoke-static {v5, v6, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v5, ", "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getNthLastWakeupForPackage(IILjava/lang/String;)J
    .locals 2

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-static {p1, p3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongArrayQueue;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result p1

    sub-int/2addr p1, p2

    if-gez p1, :cond_1

    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getTotalWakeupsInWindow(ILjava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongArrayQueue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result p0

    return p0
.end method

.method public final recordAlarmForPackage(ILjava/lang/String;J)V
    .locals 2

    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/LongArrayQueue;

    if-nez p2, :cond_0

    new-instance p2, Landroid/util/LongArrayQueue;

    invoke-direct {p2}, Landroid/util/LongArrayQueue;-><init>()V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->size()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->peekLast()J

    move-result-wide v0

    cmp-long p1, v0, p3

    if-gez p1, :cond_2

    :cond_1
    invoke-virtual {p2, p3, p4}, Landroid/util/LongArrayQueue;->addLast(J)V

    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide p3

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mWindowSize:J

    add-long/2addr p3, v0

    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->peekLast()J

    move-result-wide v0

    cmp-long p1, p3, v0

    if-gez p1, :cond_3

    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final removeForUser(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserPackage;

    iget v1, v1, Landroid/content/pm/UserPackage;->userId:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
