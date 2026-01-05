.class public final Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;
.super Ljava/util/TimerTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    iget-object v2, v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    invoke-direct {v2}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;-><init>()V

    iput-object v2, v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    iget-object v1, v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    iget-object v2, v1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    :try_start_1
    sget-object v6, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v5, v4, v6, v7}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sendKnoxAnalyticsLogs(ILjava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_1
    add-int/2addr v5, v0

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v2

    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v4

    add-int/2addr v4, v2

    if-ge v4, v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    const-string/jumbo v0, "ThreatDefenseService"

    const-string/jumbo v1, "Send broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.MTDL_PACKAGE_RULES_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2
    return-void

    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
