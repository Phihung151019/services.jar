.class public final synthetic Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/SameProcessApplicationThread;

.field public final synthetic f$1:Landroid/content/IIntentReceiver;

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/os/Bundle;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SameProcessApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/SameProcessApplicationThread;

    iput-object p2, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$1:Landroid/content/IIntentReceiver;

    iput-object p3, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$2:Landroid/content/Intent;

    iput p4, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$5:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$6:Z

    iput-boolean p8, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$7:Z

    iput-boolean p9, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$8:Z

    iput p10, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$9:I

    iput p11, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$10:I

    iput p12, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$11:I

    iput-object p13, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$12:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/SameProcessApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$1:Landroid/content/IIntentReceiver;

    iget-object v3, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$2:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$3:I

    iget-object v5, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$5:Landroid/os/Bundle;

    iget-boolean v7, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$6:Z

    iget-boolean v8, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$7:Z

    iget-boolean v9, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$8:Z

    iget v10, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$9:I

    iget v11, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$10:I

    iget v12, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$11:I

    iget-object v13, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;->f$12:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/SameProcessApplicationThread;->mWrapped:Landroid/app/IApplicationThread;

    invoke-interface/range {v1 .. v13}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
