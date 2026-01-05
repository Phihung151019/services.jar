.class public Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAmInternal:Landroid/app/ActivityManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    new-instance v0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;-><init>(Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;)V

    const-string/jumbo v1, "dynamic_instrumentation"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
