.class public final synthetic Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

    iput-object p2, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    const-string v1, "HealthServiceWrapperAidl"

    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v2

    sget v3, Landroid/hardware/health/IHealth$Stub;->$r8$clinit:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    sget-object v4, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/hardware/health/IHealth;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/hardware/health/IHealth;

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v2, v4, Landroid/hardware/health/IHealth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_0
    iget-object v2, v0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    iget-object v2, v2, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/health/IHealth;

    if-eqz v2, :cond_2

    check-cast v2, Landroid/hardware/health/IHealth$Stub$Proxy;

    iget-object v2, v2, Landroid/hardware/health/IHealth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    :try_start_0
    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object p0

    sget v2, Lvendor/samsung/hardware/health/ISehHealth$Stub;->$r8$clinit:I

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    sget-object v2, Lvendor/samsung/hardware/health/ISehHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_5

    instance-of v4, v2, Lvendor/samsung/hardware/health/ISehHealth;

    if-eqz v4, :cond_5

    check-cast v2, Lvendor/samsung/hardware/health/ISehHealth;

    :goto_2
    move-object v3, v2

    goto :goto_3

    :cond_5
    new-instance v2, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string/jumbo v2, "Unable to getExtension for health "

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    if-eqz v3, :cond_7

    iget-object p0, v0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/health/ISehHealth;

    const-string/jumbo v2, "New health AIDL HAL service registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    iget-object v0, v0, Lcom/android/server/health/HealthServiceWrapperAidl;->mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0, v3}, Lcom/android/server/health/HealthRegCallbackAidl;->onRegistration(Lvendor/samsung/hardware/health/ISehHealth;Lvendor/samsung/hardware/health/ISehHealth;)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "HealthServiceWrapperAidl: ServiceCallback: newSehService: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/NoSuchElementException;

    const-string/jumbo v0, "ServiceCallback: ISehHealth service instance isn\'t available. Perhaps no permission?"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
