.class public final Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

.field public final synthetic val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public final synthetic val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    const-string/jumbo p1, "PMMProcessHeavyDumpThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string v0, "ActivityManager_kpm"

    const-string/jumbo v1, "ProcessMemoryHeavy peakLmkdKillAdj : "

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const-string/jumbo v2, "PMM gatherHeavyProcessThread"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/am/KillPolicyManager;->getProcMemInfo()Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-boolean v2, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v5, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-static {v2, v3, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mgetProcessMemoryDumpInformation(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v6, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    iget-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v8, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    iput-object v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    iput-boolean v3, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    iput v8, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    iput-object v7, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget-object v6, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    iput-object v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    invoke-static {v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mreportHeavyProcessTop5ByAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v5, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-static {v2, v4, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mgetProcessMemoryDumpInformation(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v6, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    iget-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v8, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    iput-object v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    iput-boolean v3, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    iput v8, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    iput-object v7, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget-object v3, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    iput-object v3, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->showDebugHeavyProcess(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mshowDebugAdjMemory(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iput-boolean v4, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    return-void
.end method
