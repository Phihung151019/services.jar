.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;
.super Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "f2ec48a74490bf9d5675f48cb89ecdb3e5cd9c35"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final onResourcesAvailable()V
    .locals 3

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
