.class public final synthetic Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/incident/PendingReports;

.field public final synthetic f$1:Landroid/os/IIncidentAuthListener;

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/incident/PendingReports;

    iput-object p2, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$1:Landroid/os/IIncidentAuthListener;

    iput-object p3, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$2:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/incident/PendingReports;

    iget-object v1, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$1:Landroid/os/IIncidentAuthListener;

    iget-object v2, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$2:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$3:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got death notification listener="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IncidentCompanionService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    return-void
.end method
