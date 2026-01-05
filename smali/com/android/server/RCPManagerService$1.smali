.class public final Lcom/android/server/RCPManagerService$1;
.super Landroid/os/ContainerStateReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/RCPManagerService;->scanAndStartBridgeProxy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    const-string/jumbo p1, "RCPManagerService"

    const-string p2, "Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    const-string/jumbo p1, "onRemovePersona"

    invoke-static {p1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " onRemovePersona called for  "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "RCPManagerService"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/RCPManagerService;->deleteAllPersonaData(I)V

    return-void
.end method

.method public final onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    const-string/jumbo p1, "onResetPersona"

    invoke-static {p1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " onResetPersona called for  "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "RCPManagerService"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/RCPManagerService;->deleteAllPersonaData(I)V

    return-void
.end method

.method public final onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    const-string/jumbo p0, "onPersonaActive"

    invoke-static {p0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, " onPersonaActive called for  "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "RCPManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
