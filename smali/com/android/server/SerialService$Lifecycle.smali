.class public Lcom/android/server/SerialService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mService:Lcom/android/server/SerialService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/SerialService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SerialService$Lifecycle;->mService:Lcom/android/server/SerialService;

    const-string/jumbo v1, "serial"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Landroid/hardware/SerialManagerInternal;

    iget-object v1, p0, Lcom/android/server/SerialService$Lifecycle;->mService:Lcom/android/server/SerialService;

    iget-object v1, v1, Lcom/android/server/SerialService;->mInternal:Lcom/android/server/SerialService$1;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
