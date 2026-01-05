.class public final Lcom/android/server/lights/LightsService$VintfHalCache;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Supplier;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public mInstance:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized binderDied()V
    .locals 1

    iget v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->$r8$classId:I

    monitor-enter p0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "Unable to register DeathRecipient for "

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    check-cast v2, Lvendor/samsung/hardware/light/ISehLights;

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.hardware.light.ILights/default"

    invoke-static {v2}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/samsung/hardware/light/ISehLights$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/light/ISehLights;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string/jumbo v0, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    check-cast v1, Lvendor/samsung/hardware/light/ISehLights;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    check-cast v0, Lvendor/samsung/hardware/light/ISehLights;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :pswitch_0
    const-string/jumbo v1, "Unable to register DeathRecipient for "

    monitor-enter p0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/light/ILights;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/light/ILights;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/default"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v4, Landroid/hardware/light/ILights$Stub;->$r8$clinit:I

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/hardware/light/ILights;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/hardware/light/ILights;

    goto :goto_2

    :cond_1
    new-instance v3, Landroid/hardware/light/ILights$Stub$Proxy;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v3, Landroid/hardware/light/ILights$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_2
    iput-object v3, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    :try_start_6
    const-string/jumbo v0, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/light/ILights;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/light/ILights;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object v0

    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
