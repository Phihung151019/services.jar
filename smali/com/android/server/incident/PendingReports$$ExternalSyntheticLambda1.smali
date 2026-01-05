.class public final synthetic Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/incident/PendingReports;

.field public final synthetic f$1:Landroid/os/IIncidentAuthListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/incident/PendingReports;

    iput-object p2, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda1;->f$1:Landroid/os/IIncidentAuthListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/incident/PendingReports;

    iget-object p0, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda1;->f$1:Landroid/os/IIncidentAuthListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->getCurrentUserIfAdmin()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method
