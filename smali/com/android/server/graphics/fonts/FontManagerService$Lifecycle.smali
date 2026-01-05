.class public final Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mService:Lcom/android/server/graphics/fonts/FontManagerService;

.field public final mServiceStarted:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mServiceStarted:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/graphics/fonts/FontManagerService;-><init>(Landroid/content/Context;ZLjava/util/concurrent/CompletableFuture;)V

    iput-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mServiceStarted:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;

    invoke-direct {v0, p0}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;-><init>(Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;)V

    const-class v1, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v0, "font"

    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
