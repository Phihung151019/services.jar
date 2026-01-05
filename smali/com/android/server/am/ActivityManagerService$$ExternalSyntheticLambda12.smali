.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda12;->f$1:Z

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda12;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda12;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda12;->f$1:Z

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda12;->f$2:I

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda12;->f$3:Ljava/lang/String;

    check-cast p1, Landroid/content/Intent;

    sget v3, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x3d2

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    invoke-static {v0, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZ)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->isValid(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-direct {v1, p1, p0, v2}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;-><init>(Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {p1, v1}, Lcom/android/server/am/ActivityManagerService;->createOrGetIntentCreatorToken(Landroid/content/Intent;Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setCreatorToken(Landroid/os/IBinder;)V

    const/4 p0, 0x0

    invoke-static {v0, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZ)V

    :cond_2
    return-void
.end method
