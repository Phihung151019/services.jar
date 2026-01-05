.class public final synthetic Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SplashScreenExceptionList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SplashScreenExceptionList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SplashScreenExceptionList;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SplashScreenExceptionList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "splash_screen_exception_list"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SplashScreenExceptionList;->updateDeviceConfig(Ljava/lang/String;)V

    return-void
.end method
