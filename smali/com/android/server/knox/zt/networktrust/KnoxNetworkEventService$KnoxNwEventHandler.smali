.class public final Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v0, "KnoxNetworkEventService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleMessage called msg.what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_12

    const/4 v2, 0x2

    if-eq p1, v2, :cond_d

    const/4 v2, 0x3

    if-eq p1, v2, :cond_b

    const/4 v2, 0x4

    if-eq p1, v2, :cond_5

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    monitor-enter p1

    :try_start_0
    const-string/jumbo p0, "uid"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v2, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mVpnNetworkCallbackList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mAllowedApplications:Ljava/util/List;

    iget-object v3, v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mDisallowedApplications:Ljava/util/List;

    iget-object v0, v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mRouteInfo:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->updateAppInBypassAndUnAuthList(IILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit p1

    return-void

    :cond_4
    :goto_2
    monitor-exit p1

    return-void

    :goto_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    monitor-enter p1

    :try_start_2
    const-string/jumbo p0, "uid"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mVpnNetworkCallbackList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;

    if-eqz v1, :cond_a

    iget-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mRouteInfo:Ljava/util/List;

    iget-object v3, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mDisallowedApplications:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUidRanges:Ljava/util/Set;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v3, "KnoxNetworkEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unAuthorized uid is accessing active vpn tunnel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v4, v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->updateAppInBypassAndUnAuthList(IILjava/util/List;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_7
    :goto_4
    iget-object v3, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mAllowedApplications:Ljava/util/List;

    if-eqz v3, :cond_a

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUidRanges:Ljava/util/Set;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_9
    const-string v0, "KnoxNetworkEventService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid installed is bypassing active vpn tunnel "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v4, v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->updateAppInBypassAndUnAuthList(IILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_a
    :goto_5
    monitor-exit p1

    return-void

    :goto_6
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_b
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    const-string/jumbo p0, "handleActionUserRemoved for user: "

    monitor-enter p1

    :try_start_4
    const-string/jumbo v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "KnoxNetworkEventService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez p0, :cond_c

    monitor-exit p1

    return-void

    :cond_c
    :try_start_5
    iget-object p0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    sget-object v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->INSECURE_PORTS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    iget-object p0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    sget-object v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->ABNORMAL_PACKETS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    iget-object p0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    sget-object v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->LOCAL_NW:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    iget-object p0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->removeLoggingRulesForVpnBypass(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_d
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    monitor-enter p1

    :try_start_7
    const-string/jumbo p0, "eventType"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    iget-object v0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->unregisterSystemDefaultNetworkCallback()V

    goto :goto_7

    :catchall_3
    move-exception p0

    goto/16 :goto_f

    :cond_e
    :goto_7
    packed-switch p0, :pswitch_data_0

    goto :goto_9

    :pswitch_0
    iget-object p0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->unRegisterVpnNetworkCallback(I)V

    goto :goto_8

    :pswitch_1
    iget-object p0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->LOCAL_NW:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    goto :goto_9

    :pswitch_2
    iget-object p0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->ABNORMAL_PACKETS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    goto :goto_9

    :pswitch_3
    iget-object p0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->INSECURE_PORTS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    :cond_f
    :goto_9
    iget-object p0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iget-object p0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mReceiver:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;

    if-eqz p0, :cond_10

    iget-object v2, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_a

    :catchall_4
    move-exception p0

    goto :goto_c

    :cond_10
    :goto_a
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mReceiver:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_b
    :try_start_9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_d

    :catch_0
    :try_start_a
    const-string p0, "KnoxNetworkEventService"

    const-string v2, "Error while trying to unregister the receiver"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_b

    :goto_c
    :try_start_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_11
    :goto_d
    monitor-exit p1

    :goto_e
    return-void

    :goto_f
    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw p0

    :cond_12
    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    invoke-static {p0, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->-$$Nest$mhandleStartMonitoring(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
