.class public final Lcom/android/server/location/nsflp/NSLocationMonitor$3;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 9

    const-string/jumbo v0, "NSLocationMonitor"

    const-string/jumbo v1, "onSubscriptionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget v4, v4, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_6

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v6, v4

    if-nez v6, :cond_0

    goto/16 :goto_1

    :cond_0
    aget v4, v4, v1

    iget-object v6, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object v7, v6, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimSubId:[I

    if-eqz v7, :cond_2

    array-length v8, v7

    iget v6, v6, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    if-ne v8, v6, :cond_1

    aget v6, v7, v2

    if-ne v4, v6, :cond_1

    const-string/jumbo v5, "NSLocationMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SubId["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "] for sim["

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "] was not changed"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const-string/jumbo v6, "NSLocationMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SubId was changed for sim["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object v6, v6, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimSubId:[I

    aput v4, v6, v2

    :cond_2
    iget-object v4, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object v4, v4, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object v3, v3, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    const-string/jumbo v3, "NSLocationMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unregister previous PhoneStateListener SimSlot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object v3, v3, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v2

    invoke-virtual {v4, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object v3, v3, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v6, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;

    iget-object v7, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-direct {v6, v7}, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    aput-object v6, v3, v2

    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object v3, v3, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v2

    invoke-virtual {v4, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    move v3, v5

    goto :goto_2

    :cond_4
    :goto_1
    const-string/jumbo v4, "NSLocationMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load subId for sim["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "isInitialized"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object v2, Landroid/location/LocationConstants$STATE_TYPE;->SIM_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    :cond_7
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
