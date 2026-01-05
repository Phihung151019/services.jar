.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IServiceCreator;


# virtual methods
.method public final createService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 0

    new-instance p0, Lcom/samsung/android/ssdid/SemSsdidManagerService;

    invoke-direct {p0, p1}, Lcom/samsung/android/ssdid/SemSsdidManagerService;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
