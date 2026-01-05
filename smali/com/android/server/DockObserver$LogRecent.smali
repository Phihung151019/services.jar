.class public final Lcom/android/server/DockObserver$LogRecent;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCurrentReportLogIndex:I

.field public mCurrentUeventLogIndex:I

.field public report:[I

.field public reportTime:[J

.field public reportUsbpdIds:[Ljava/lang/String;

.field public uEventTime:[J

.field public uEventType:[I

.field public uEventUsbpdIds:[Ljava/lang/String;


# virtual methods
.method public final log(IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_0

    iput v0, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    :cond_0
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/DockObserver$LogRecent;->uEventTime:[J

    aput-wide v0, v2, p1

    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    iget-object v0, p0, Lcom/android/server/DockObserver$LogRecent;->uEventType:[I

    aput p2, v0, p1

    iget-object p2, p0, Lcom/android/server/DockObserver$LogRecent;->uEventUsbpdIds:[Ljava/lang/String;

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    return-void

    :cond_1
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_2

    iput v0, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    :cond_2
    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/DockObserver$LogRecent;->reportTime:[J

    aput-wide v0, v2, p1

    iget p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    iget-object v0, p0, Lcom/android/server/DockObserver$LogRecent;->report:[I

    aput p2, v0, p1

    iget-object p2, p0, Lcom/android/server/DockObserver$LogRecent;->reportUsbpdIds:[Ljava/lang/String;

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    return-void
.end method
