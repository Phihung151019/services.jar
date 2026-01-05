.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, v1, v1, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    return-void

    :cond_0
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "android.intent.extra.UID"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget v6, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v6, p1, :cond_2

    iget-object v5, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {p1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz v2, :cond_c

    if-eqz p1, :cond_c

    const-string/jumbo p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p0, "NetworkAnalytics:Service"

    const-string/jumbo p1, "The package removal intent has been called before upgrade"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iput v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 p2, 0x6

    invoke-virtual {p0, p2, v1, v1, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "android.intent.extra.UID"

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object p2, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {p2, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz v2, :cond_c

    if-eqz p2, :cond_c

    new-instance p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iput p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v1, v1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    return-void

    :cond_7
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v0, :cond_a

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    :try_start_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget v3, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->userId:I

    if-ne v3, p2, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_9
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_a
    :goto_4
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/16 p2, 0xb

    invoke-virtual {p0, p2, v1, v1, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    return-void

    :cond_b
    const-string/jumbo v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/16 p2, 0xc

    invoke-virtual {p0, p2, v1, v1, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    :cond_c
    return-void
.end method
