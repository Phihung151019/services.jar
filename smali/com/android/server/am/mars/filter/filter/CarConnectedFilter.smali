.class public final Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# static fields
.field public static listener:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;


# instance fields
.field public carConnectionQueryHandler:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionQueryHandler;

.field public carConnectionReceiver:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionReceiver;

.field public final isCarConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final logExcludeList:Ljava/util/ArrayList;

.field public mContext:Landroid/content/Context;

.field public final userIdPackageListSelfLocked:Landroid/util/ArrayMap;


# direct methods
.method public static -$$Nest$smnotifyCarDisconnected()V
    .locals 2

    sget-object v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->listener:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;

    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;

    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->isCarConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "FILTER 32"

    const-string/jumbo v1, "android auto off"

    invoke-static {v0, v1}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->isCarConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->carConnectionReceiver:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionReceiver;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->userIdPackageListSelfLocked:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "com.google.android.projection.gearhead"

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->logExcludeList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->carConnectionReceiver:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->isCarConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->userIdPackageListSelfLocked:Landroid/util/ArrayMap;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->userIdPackageListSelfLocked:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_1

    monitor-exit p2

    return p3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x20

    monitor-exit p2

    return p0

    :cond_2
    monitor-exit p2

    return p3

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->carConnectionQueryHandler:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionQueryHandler;

    new-instance p1, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;

    invoke-direct {p1, p0}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;)V

    sput-object p1, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->listener:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;

    const-string/jumbo p1, "androidx.car.app.connection.action.CAR_CONNECTION_UPDATED"

    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    new-instance v0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionReceiver;-><init>(Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->carConnectionReceiver:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionReceiver;

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->queryForState()V

    return-void
.end method

.method public final queryForState()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->carConnectionQueryHandler:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionQueryHandler;

    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string/jumbo v1, "androidx.car.app.connection"

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string p0, "CarConnectionState"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v1, 0x2a

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
