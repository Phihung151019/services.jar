.class public final Lcom/android/server/am/AppFGSTracker$PackageDurations;
.super Lcom/android/server/am/BaseAppStateDurations;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEFAULT_INDEX:I


# instance fields
.field public mForegroundServiceTypes:I

.field public mIsLongRunning:Z

.field public final mTracker:Lcom/android/server/am/AppFGSTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v0

    sput v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;Lcom/android/server/am/AppFGSTracker;)V
    .locals 1

    const/16 v0, 0x1f

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/am/BaseAppStateEvents;-><init>(ILjava/lang/String;ILcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    iget-object p1, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    sget p3, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    aput-object p2, p1, p3

    iput-object p4, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppFGSTracker$PackageDurations;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateEvents;-><init>(Lcom/android/server/am/BaseAppStateDurations;)V

    iget-boolean v0, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    iput-boolean v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    iget v0, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    iput v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    iget-object p1, p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    return-void
.end method


# virtual methods
.method public final addEvent(JZ)V
    .locals 5

    new-instance v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    sget v1, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    invoke-virtual {p0, p3, v0, v1}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    :cond_0
    if-nez p3, :cond_5

    iget p3, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    if-eqz p3, :cond_5

    const/4 p3, 0x1

    move v2, p3

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v3, v3, v2

    new-instance v4, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v4, p1, p2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-ne v2, v1, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v2, -0x1

    shl-int v3, p3, v3

    :goto_1
    invoke-virtual {p0, v3, p1, p2, v0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(IJZ)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iput v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    :cond_5
    return-void
.end method

.method public final formatEventTypeLabel(I)Ljava/lang/String;
    .locals 1

    sget p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    if-ne p1, p0, :cond_0

    const-string/jumbo p0, "Overall foreground services: "

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-ne p1, p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    sub-int/2addr p1, p0

    shl-int/2addr p0, p1

    :goto_0
    invoke-static {p0}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final notifyListenersOnStateChangeIfNecessary(IJZ)V
    .locals 8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    :cond_1
    move v3, v0

    iget-object v6, p0, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget v2, p0, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    move-wide v4, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    return-void
.end method

.method public final setForegroundServiceType(IJ)V
    .locals 5

    iget v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    if-eq p1, v0, :cond_5

    sget v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    xor-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    and-int v4, p1, v1

    if-eqz v4, :cond_2

    aget-object v4, v3, v2

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    aput-object v4, v3, v2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v2, v3, v2

    new-instance v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v3, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(IJZ)V

    goto :goto_1

    :cond_2
    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v2, v3, v2

    new-instance v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v3, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->notifyListenersOnStateChangeIfNecessary(IJZ)V

    :cond_3
    :goto_1
    not-int v1, v1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    goto :goto_0

    :cond_4
    iput p1, p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mForegroundServiceTypes:I

    :cond_5
    :goto_2
    return-void
.end method
