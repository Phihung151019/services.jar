.class public final synthetic Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/injector/SystemAppOpsHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/injector/SystemAppOpsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/injector/SystemAppOpsHelper;

    return-void
.end method


# virtual methods
.method public final onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/injector/SystemAppOpsHelper;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
