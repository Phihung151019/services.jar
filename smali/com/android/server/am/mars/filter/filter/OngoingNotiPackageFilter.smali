.class public final Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final mActiveNotiMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mNLSPkgMap:Landroid/util/ArrayMap;

.field public final mNotificationListener:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNLSPkgMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mActiveNotiMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNotificationListener:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;

    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNotificationListener:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to unregister notification listener, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "MARs:OngoingNotiPackageFilter"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 6

    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNLSPkgMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    const/4 v1, 0x3

    const-string v2, ")"

    const-string v3, "("

    const-string/jumbo v4, "MARs:OngoingNotiPackageFilter"

    if-eqz p3, :cond_1

    const-string/jumbo p0, "filter(NotiListener) : "

    invoke-static {p1, p0, p4, v3, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mActiveNotiMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/service/notification/StatusBarNotification;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    if-ne v5, p2, :cond_2

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget p3, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 p3, p3, 0x22

    if-eqz p3, :cond_2

    const-string/jumbo p0, "filter : "

    invoke-static {p1, p0, p4, v3, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    return v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNotificationListener:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to register notification listener, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "MARs:OngoingNotiPackageFilter"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
