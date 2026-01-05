.class public Lcom/android/server/integrity/AppIntegrityManagerService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerService;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->$r8$clinit:I

    const-string v1, "AppIntegrityManagerServiceHandler"

    invoke-static {v1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v1

    new-instance v2, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v2, v0, v3, v1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Landroid/os/Handler;)V

    const-string/jumbo v0, "app_integrity"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
