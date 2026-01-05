.class public final Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field public final synthetic val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    const-string p1, "KPMProcessMemoryDumpThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    const-string v0, "ActivityManager_kpm"

    const-string v1, "KPM end cycle get pss"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-boolean v0, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->activate(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->-$$Nest$mgetProcDumpMemInfo(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->-$$Nest$mshowDebugAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    iput-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    iget-boolean v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/KillPolicyManager;->reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-boolean v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/KillPolicyManager;->reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->report(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->deactivate()V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    return-void

    :goto_4
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->deactivate()V

    throw v0
.end method
