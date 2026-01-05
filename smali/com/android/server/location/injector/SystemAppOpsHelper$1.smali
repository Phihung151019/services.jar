.class public final Lcom/android/server/location/injector/SystemAppOpsHelper$1;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemAppOpsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemAppOpsHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppOpsHelper$1;->this$0:Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOpChanged(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/location/injector/SystemAppOpsHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/location/injector/SystemAppOpsHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemAppOpsHelper$1;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
