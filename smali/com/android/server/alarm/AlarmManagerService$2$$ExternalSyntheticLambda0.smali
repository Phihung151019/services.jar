.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService$2;

.field public final synthetic f$1:Landroid/app/IAlarmCompleteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService$2;Landroid/app/IAlarmCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/AlarmManagerService$2;

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$2$$ExternalSyntheticLambda0;->f$1:Landroid/app/IAlarmCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/AlarmManagerService$2;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$2$$ExternalSyntheticLambda0;->f$1:Landroid/app/IAlarmCompleteListener;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v2, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickOptions:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    :try_start_0
    invoke-interface {p0, v0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
