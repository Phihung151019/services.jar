.class public final Lcom/android/server/job/restrictions/ThermalStatusRestriction;
.super Lcom/android/server/job/restrictions/JobRestriction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mForceRestricted:Z

.field public mIncreased:Z

.field public mSIOPTracker:Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;

.field public volatile mThermalStatus:I


# virtual methods
.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    const-string/jumbo v0, "Thermal status: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    return-void
.end method

.method public getThermalStatus()I
    .locals 0

    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return p0
.end method

.method public final isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 5

    const/16 v0, 0x28

    if-lt p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    const-string/jumbo v2, "android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    const/16 v2, 0x320

    if-eq v0, v2, :cond_9

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    const/16 v2, 0x321

    if-ne v0, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->mIsForceExecuteJob:Z

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v0, v2, :cond_a

    iget-boolean v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mForceRestricted:Z

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    iget v2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    const/16 v4, 0x23

    if-lt v2, v1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result p2

    if-gtz p2, :cond_a

    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_5
    if-lt p2, v4, :cond_6

    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isImportantWhileForeground()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result p2

    if-gtz p2, :cond_a

    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_6
    const/16 p2, 0x190

    if-ne v0, p2, :cond_a

    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    if-lt v1, v3, :cond_9

    if-lt p2, v4, :cond_8

    goto :goto_0

    :cond_8
    const/16 p2, 0x64

    if-eq v0, p2, :cond_a

    const/16 p2, 0xc8

    if-ne v0, p2, :cond_9

    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_9
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_1
    return v3
.end method

.method public final onSystemServicesReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v1, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;

    invoke-direct {v1, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;-><init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    return-void
.end method
