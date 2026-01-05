.class public final Lcom/android/server/connectivity/MultipathPolicyTracker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCM:Landroid/net/ConnectivityManager;

.field public final mClock:Ljava/time/Clock;

.field public final mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mMobileNetworkCallback:Lcom/android/server/connectivity/MultipathPolicyTracker$1;

.field public final mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

.field public mNPM:Landroid/net/NetworkPolicyManager;

.field public mPolicyListener:Lcom/android/server/connectivity/MultipathPolicyTracker$2;

.field public final mResolver:Landroid/content/ContentResolver;

.field final mSettingsObserver:Landroid/database/ContentObserver;

.field public final mUserAllContext:Landroid/content/Context;


# direct methods
.method public static -$$Nest$mupdateAllMultipathBudgets(Lcom/android/server/connectivity/MultipathPolicyTracker;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mUserAllContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/BestClock;

    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/time/Clock;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mClock:Ljava/time/Clock;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;

    invoke-direct {p1, p0, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance p1, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 9

    const-string/jumbo v0, "MultipathPolicyTracker:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    iget-object v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    iget-wide v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-class v4, Landroid/net/ConnectivityManager;

    iget-wide v5, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    int-to-long v5, v0

    const-string/jumbo v0, "MULTIPATH_PREFERENCE_"

    invoke-static {v4, v0, v5, v6}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Network %s: quota %d, budget %d. Preference: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final start()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mCM:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v2, Lcom/android/server/connectivity/MultipathPolicyTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$1;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    iput-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMobileNetworkCallback:Lcom/android/server/connectivity/MultipathPolicyTracker$1;

    iget-object v3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mCM:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v2, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$2;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mPolicyListener:Lcom/android/server/connectivity/MultipathPolicyTracker$2;

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    const-string/jumbo v0, "network_default_daily_multipath_quota_bytes"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mUserAllContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
