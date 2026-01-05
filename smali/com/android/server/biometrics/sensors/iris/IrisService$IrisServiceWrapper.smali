.class public final Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;
.super Landroid/hardware/iris/IIrisService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/iris/IrisService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-direct {p0}, Landroid/hardware/iris/IIrisService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final registerAuthenticators(Ljava/util/List;)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/iris/IIrisService$Stub;->registerAuthenticators_enforcePermission()V

    const/4 v0, 0x1

    const-string v1, "IrisService"

    const/16 v2, 0xa

    invoke-static {v2, v1, v0}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
