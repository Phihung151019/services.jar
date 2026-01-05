.class Lcom/android/server/pm/InstallDependencyHelper$1;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/InstallDependencyHelper;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/content/Context;Landroid/content/Intent;ILcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda1;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$1;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iput-object p6, p0, Lcom/android/server/pm/InstallDependencyHelper$1;->val$handler:Landroid/os/Handler;

    move-object p1, p2

    move-object p2, p3

    const/4 p3, 0x1

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    sget-wide v0, Lcom/android/server/pm/InstallDependencyHelper;->UNBIND_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public final getJobHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper$1;->val$handler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getRequestTimeoutMs()J
    .locals 2

    sget-wide v0, Lcom/android/server/pm/InstallDependencyHelper;->REQUEST_TIMEOUT_MILLIS:J

    return-wide v0
.end method
