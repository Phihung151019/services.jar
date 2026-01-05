.class public final Lcom/android/server/input/InputManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mService:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/input/InputManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    return-void
.end method


# virtual methods
.method public final getService()Lcom/android/server/input/InputManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$monBootPhase(Lcom/android/server/input/InputManagerService;I)V

    return-void
.end method

.method public final onStart()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "input"

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$monUserSwitching(Lcom/android/server/input/InputManagerService;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method
