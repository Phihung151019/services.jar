.class public final Lcom/android/server/am/SameProcessApplicationThread;
.super Landroid/app/IApplicationThread$Default;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mWrapped:Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>(Landroid/app/IApplicationThread;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/IApplicationThread$Default;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/app/IApplicationThread;

    iput-object p1, p0, Lcom/android/server/am/SameProcessApplicationThread;->mWrapped:Landroid/app/IApplicationThread;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final schedulePing(Landroid/os/RemoteCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/SameProcessApplicationThread;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    .locals 15

    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/SameProcessApplicationThread;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleReceiverList(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/SameProcessApplicationThread;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    .locals 15

    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/SameProcessApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
