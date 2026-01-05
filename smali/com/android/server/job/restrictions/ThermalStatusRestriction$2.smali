.class public final Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;


# direct methods
.method public constructor <init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo p1, "job_restriction"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    iget-boolean p2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mForceRestricted:Z

    if-eq p2, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mForceRestricted:Z

    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mIncreased:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p2, p0, v0}, Lcom/android/server/job/JobSchedulerService;->onRestrictionStateChanged(Lcom/android/server/job/restrictions/JobRestriction;Z)V

    :cond_2
    return-void
.end method
