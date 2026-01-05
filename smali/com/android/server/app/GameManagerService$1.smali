.class public final Lcom/android/server/app/GameManagerService$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;

.field public final synthetic val$listener:Ljava/lang/Object;

.field public final synthetic val$listenerBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;Landroid/app/IGameModeListener;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/app/GameManagerService$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    iput-object p2, p0, Lcom/android/server/app/GameManagerService$1;->val$listener:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/app/GameManagerService$1;->val$listenerBinder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/app/GameManagerService;Landroid/app/IGameStateListener;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/app/GameManagerService$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    iput-object p2, p0, Lcom/android/server/app/GameManagerService$1;->val$listener:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/app/GameManagerService$1;->val$listenerBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/app/GameManagerService$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v2, p0, Lcom/android/server/app/GameManagerService$1;->val$listener:Ljava/lang/Object;

    check-cast v2, Landroid/app/IGameStateListener;

    sget v3, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    iget-object v3, v1, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$1;->val$listenerBinder:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v2, p0, Lcom/android/server/app/GameManagerService$1;->val$listener:Ljava/lang/Object;

    check-cast v2, Landroid/app/IGameModeListener;

    sget v3, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    iget-object v3, v1, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$1;->val$listenerBinder:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
