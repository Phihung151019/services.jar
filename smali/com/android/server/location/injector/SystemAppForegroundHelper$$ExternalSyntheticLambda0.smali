.class public final synthetic Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/injector/SystemAppForegroundHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/injector/SystemAppForegroundHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    return-void
.end method


# virtual methods
.method public final onUidImportance(II)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x7d

    if-gt p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/injector/SystemAppForegroundHelper;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
