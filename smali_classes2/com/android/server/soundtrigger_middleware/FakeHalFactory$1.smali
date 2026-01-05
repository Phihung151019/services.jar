.class public final Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;
.super Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

.field public final synthetic val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Lcom/android/server/soundtrigger_middleware/FakeHalFactory$$ExternalSyntheticLambda0;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

    iput-object p4, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    invoke-direct {p0, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;-><init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final clientAttached(Landroid/os/IBinder;)V
    .locals 3

    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->INJECTION_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clientDetached(Landroid/os/IBinder;)V
    .locals 3

    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->INJECTION_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final detach()V
    .locals 4

    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->INJECTION_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
