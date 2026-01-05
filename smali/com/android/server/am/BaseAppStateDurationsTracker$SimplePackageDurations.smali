.class public Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
.super Lcom/android/server/am/BaseAppStateDurations;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/am/BaseAppStateEvents;-><init>(ILjava/lang/String;ILcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    const/4 p2, 0x0

    aput-object p1, p0, p2

    return-void
.end method


# virtual methods
.method public final formatEventTypeLabel(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
