.class public final Lcom/android/server/pm/pu/PackageSummaryLogger;
.super Lcom/android/server/pm/pu/AbstractLogger;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final collectDataFrom(Lcom/android/server/pm/pu/ProfileUtilizationService;)V
    .locals 1

    const-string/jumbo v0, "pu_session_id"

    iget-object p1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mSessionId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
