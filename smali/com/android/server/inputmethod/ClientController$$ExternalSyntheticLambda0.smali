.class public final synthetic Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ClientController;

.field public final synthetic f$1:Lcom/android/server/inputmethod/IInputMethodClientInvoker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ClientController;Lcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/ClientController;

    iput-object p2, p0, Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/ClientController;

    iget-object p0, p0, Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/ClientController;->removeClientAsBinder(Landroid/os/IBinder;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
