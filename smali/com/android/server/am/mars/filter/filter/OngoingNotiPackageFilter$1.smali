.class public final Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onListenerConnected()V
    .locals 0

    return-void
.end method

.method public final onListenerDisconnected()V
    .locals 0

    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mActiveNotiMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mActiveNotiMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
