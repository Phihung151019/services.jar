.class public final Lcom/android/server/input/InputManagerService$LightSession;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mDeviceId:I

.field public mLightIds:[I

.field public mLightStates:[Landroid/hardware/lights/LightState;

.field public final mOpPkg:Ljava/lang/String;

.field public final mToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    iput p2, p0, Lcom/android/server/input/InputManagerService$LightSession;->mDeviceId:I

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$LightSession;->mOpPkg:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/input/InputManagerService$LightSession;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputManager"

    const-string/jumbo v1, "Light token died."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    iget v2, p0, Lcom/android/server/input/InputManagerService$LightSession;->mDeviceId:I

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$LightSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->closeLightSession(ILandroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, v1, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LightSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
