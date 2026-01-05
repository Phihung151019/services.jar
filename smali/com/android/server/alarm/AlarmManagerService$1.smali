.class public final Lcom/android/server/alarm/AlarmManagerService$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$1;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 3

    invoke-static {p1}, Landroid/app/IAlarmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$1;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$1;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
