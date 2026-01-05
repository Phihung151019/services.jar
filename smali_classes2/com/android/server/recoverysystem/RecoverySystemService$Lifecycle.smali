.class public final Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mRecoverySystemService:Lcom/android/server/recoverysystem/RecoverySystemService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;->mRecoverySystemService:Lcom/android/server/recoverysystem/RecoverySystemService;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->onSystemServicesReady()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 3

    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-direct {v2, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/android/server/recoverysystem/RecoverySystemService;-><init>(Lcom/android/server/recoverysystem/RecoverySystemService$Injector;)V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;->mRecoverySystemService:Lcom/android/server/recoverysystem/RecoverySystemService;

    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
