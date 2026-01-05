.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;->f$1:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;->f$2:I

    iput p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;->f$3:I

    iput p5, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/am/UserController;

    iget-object v3, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;->f$1:Landroid/content/Intent;

    iget v10, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;->f$2:I

    iget v8, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;->f$3:I

    iget v9, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;->f$4:I

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v4, Lcom/android/server/am/UserController$3;

    invoke-direct {v4, v1, v10}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;I)V

    const-string/jumbo v0, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    :goto_0
    move-wide v12, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0

    :goto_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v11

    const/4 v14, 0x0

    const-string v16, ""

    const/16 v15, 0xc8

    invoke-virtual/range {v11 .. v16}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    invoke-virtual {v11}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    return-void
.end method
